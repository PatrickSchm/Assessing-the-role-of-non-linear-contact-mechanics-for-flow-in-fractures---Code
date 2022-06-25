// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      mpi-ppif.c                                                    */
/*                                                                          */
/* Purpose:   parallel processor interface                                  */
/*            Provides a portable interface to message passing MIMD         */
/*            architectures. PPIF is divided into three parts:              */
/*                                                                          */
/*            (1) Administration                                            */
/*            (2) Communication                                             */
/*            (3) Miscellaneous                                             */
/*                                                                          */
/*            The interface assumes that the parallel machine has           */
/*            the following properties:                                     */
/*                                                                          */
/*            (1) it is physically connected at least as a 2 or 3 dim. array*/
/*            (2) it has a fast virtual channel communication mechanism     */
/*            (3) it has an asynchronous communication mechanism            */
/*                                                                          */
/*            MPI Implementation                                            */
/*                                                                          */
/* Author:    Jens Boenisch                                                 */
/*            Rechenzentrum Uni Stuttgart                                   */
/*            Universitaet Stuttgart                                        */
/*            Allmandring 3a                                                */
/*            7000 Stuttgart 80                                             */
/*            internet: boenisch@rus.uni-stuttgart.de                       */
/*                                                                          */
/* History:   17 Aug 1992, begin                                            */
/*            18 Feb 1993, Indigo version                                   */
/*            02 Jun 1993, Paragon OSF/1 version                            */
/*            14 Sep 1995, MPI version                                      */
/*            29 Jan 2003, pV3 concentrator support                         */
/*                                                                          */
/* Remarks:                                                                 */
/*                                                                          */
/****************************************************************************/

/****************************************************************************/
/*                                                                          */
/* include files                                                            */
/*            system include files                                          */
/*            application include files                                     */
/*                                                                          */
/****************************************************************************/

/* standard C library */
#include <config.h>
#include <sys/types.h>
#include <cstdio>
#include <cstdlib>
#include <ctime>
#include <cmath>

#include <mpi.h>

#include "../ppif.h"

/*#include "ugtypes.h"*/

using namespace PPIF;

/****************************************************************************/
/*                                                                          */
/* defines in the following order                                           */
/*                                                                          */
/*        compile time constants defining static data size (i.e. arrays)    */
/*        other constants                                                   */
/*        macros                                                            */
/*                                                                          */
/****************************************************************************/

#define RAND_MSG_SIZE   128     /* max size of random messages              */
#define MAXT            15      /* maximum number of downtree nodes max     */
                                /* log2(P)                                  */
#define PTYPE_ANY       -1L     /* process type: any process                */

#define ID_ARRAY        100     /* channel id: array                        */
#define ID_TREE         101     /* channel id: tree                         */
#define ID_GLOBAL       102     /* channel id: global                       */
#define ID_MAIL         103     /* channel id: mail                         */

#define PPIF_SUCCESS    0       /* Return value for success                 */
#define PPIF_FAILURE    1       /* Return value for failure                 */

#define COMM MPI_COMM_WORLD

/****************************************************************************/
/*                                                                          */
/* data structures                                                          */
/*                                                                          */
/****************************************************************************/

typedef struct {
  int p;
  int chanid;
} MPIVChannel;

typedef MPIVChannel *MPIVChannelPtr;


/****************************************************************************/
/*                                                                          */
/* definition of static variables                                           */
/*                                                                          */
/****************************************************************************/



/****************************************************************************/
/*                                                                          */
/* definition of exported global variables                                  */
/*                                                                          */
/****************************************************************************/

/* id's */
int PPIF::me;                          /* my processor id                          */
int PPIF::master;                      /* id of master processor                   */
int PPIF::procs;                       /* number of processors in the network      */

/* 3D array dimensions, may be 1 !          */
int PPIF::DimX, PPIF::DimY, PPIF::DimZ;

/* Tree structure */
int PPIF::degree;                      /* degree of downtree nodes                 */
VChannelPtr PPIF::uptree = NULL;       /* channel uptree                           */
VChannelPtr PPIF::downtree[MAXT] = {NULL};  /* channels downtree (may be empty)    */
int PPIF::slvcnt[MAXT];                /* number of processors in subtree          */

/****************************************************************************/
/*                                                                          */
/* forward declarations of functions used before they are defined           */
/*                                                                          */
/****************************************************************************/

int SendSync (void* v, void *data, int size);
int RecvSync (void* v, void *data, int size);

/****************************************************************************/
/*                                                                          */
/* routines for handling virtual channels                                   */
/*                                                                          */
/****************************************************************************/

static VChannelPtr NewVChan (int p, int id)

{
  MPIVChannelPtr myChan = (MPIVChannelPtr)malloc(sizeof(MPIVChannel));

  myChan->p      = p;
  myChan->chanid = id;

  return (myChan);
}


static void DeleteVChan (VChannelPtr myChan)

{
  free(myChan);
}


/****************************************************************************/
/*                                                                          */
/* Function:  InitPPIF                                                      */
/*                                                                          */
/* Purpose:   initialize parallel processor interface                       */
/*            set exported variables, allocate tree communication structure */
/*                                                                          */
/* Input:     void                                                          */
/*                                                                          */
/* Output:    int 0:  ok                                                    */
/*            int!=0: error                                                 */
/*                                                                          */
/****************************************************************************/

/*
   Factor N into two integers that are as close together as possible
 */

static void Factor (int N, int *pn, int *pm)

{
  int n = (int)ceil (sqrt ((double) N));
  int m = (int)floor (sqrt ((double) N));

  while (n*m != N)
  {
    if (n*m < N) n++;
    else m--;
  }

  *pn = n; *pm = m;
}



static int PPIFBeganMPI=0; /* remember that PPIF started MPI */


int PPIF::InitPPIF (int *argcp, char ***argvp)
{
  int i, succ, sonr, sonl;
  MPI_Status status;
  int mpierror, mpiinitialized;

  /* the following is due to Klaus-Dieter Oertel, 961016;
         (original idea from the developers of the PetSc library)  */
  /* ppif checks whether MPI has been started by another
     library and starts it only if necessary. */
  mpierror = MPI_Initialized(&mpiinitialized);
  if (mpierror) MPI_Abort(MPI_COMM_WORLD, mpierror);
  if (!mpiinitialized)
  {
    mpierror = MPI_Init (argcp, argvp);
    if (mpierror) MPI_Abort( MPI_COMM_WORLD, mpierror);
    PPIFBeganMPI = 1;
  }
  MPI_Comm_rank (COMM, &me);
  MPI_Comm_size (COMM, &procs);

  master = 0;

  DimZ = 1;
  Factor(procs, &DimX, &DimY);

  /* tree configuration */

  degree = 0;
  sonl = 2*me + 1;
  sonr = 2*me + 2;

  if (sonl<procs)
  {
    degree++;
    if (! downtree[0])  /* InitPPIF is being called for the first time */
      downtree[0] = NewVChan(sonl,ID_TREE);
  }
  else
  {
    downtree[0] = NULL;
  }

  if (sonr<procs)
  {
    degree++;
    if (! downtree[1])  /* InitPPIF is being called for the first time */
      downtree[1] = NewVChan(sonr,ID_TREE);
  }
  else
  {
    downtree[1] = NULL;
  }

  if (me>0)
  {
    if (! uptree)  /* InitPPIF is being called for the first time */
      uptree = NewVChan((me-1)/2,ID_TREE);
  }
  else
  {
    uptree = NULL;
  }

  succ=1;
  for(i=0; i<degree; i++)
  {
    MPI_Recv ((void *) &(slvcnt[i]), (int) sizeof(int), MPI_BYTE,
              ((MPIVChannel*)downtree[i])->p, ID_TREE, COMM, &status);
    succ += slvcnt[i];
  }
  if (me>0)
  {
    MPI_Send ((void *) &succ, (int) sizeof(int), MPI_BYTE, (int)(me-1)/2, ID_TREE, COMM);
  }

  return (PPIF_SUCCESS);
}


int PPIF::ExitPPIF ()
{
  int mpierror;

  if (PPIFBeganMPI)
  {
    mpierror = MPI_Finalize();
    if (mpierror) MPI_Abort(MPI_COMM_WORLD, mpierror);
    PPIFBeganMPI = 0;
  }

  /* Deallocate tree structure */
  DeleteVChan(uptree);
  uptree = NULL;
  /* I currently think that only the first two entries of downtree can contain
   * valied entries, but I am not entirely sure. */
  DeleteVChan(downtree[0]);
  DeleteVChan(downtree[1]);
  downtree[0] = downtree[1] = NULL;

  return PPIF_SUCCESS;
}


/****************************************************************************/
/*                                                                          */
/* Tree oriented functions                                                  */
/*                                                                          */
/****************************************************************************/

int PPIF::Broadcast (void *data, int size)

{
  if (MPI_SUCCESS != MPI_Bcast (data, size, MPI_BYTE, master, COMM) )
    return (PPIF_FAILURE);

  return (PPIF_SUCCESS);
}

int PPIF::Concentrate (void *data, int size)

{
  if (me != master)
    if (SendSync (uptree, data, size) < 0) return (PPIF_FAILURE);

  return (PPIF_SUCCESS);
}

int PPIF::GetConcentrate (int slave, void *data, int size)

{
  if (slave < degree)
    if (RecvSync (downtree[slave], data, size) < 0) return (PPIF_FAILURE);

  return (PPIF_SUCCESS);
}

int PPIF::Spread (int slave, void *data, int size)

{
  if (slave < degree)
    if (SendSync (downtree[slave], data, size) < 0) return (PPIF_FAILURE);

  return (PPIF_SUCCESS);
}

int PPIF::GetSpread (void *data, int size)

{
  if (me!=master)
    if (RecvSync (uptree, data, size) < 0) return (PPIF_FAILURE);

  return (PPIF_SUCCESS);
}

int PPIF::Synchronize ()

{
  if (MPI_SUCCESS != MPI_Barrier (COMM) ) return (PPIF_FAILURE);

  return (PPIF_SUCCESS);
}


/****************************************************************************/
/*                                                                          */
/* Synchronous communication                                                */
/*                                                                          */
/****************************************************************************/

VChannelPtr PPIF::ConnSync (int p, int id)

{
  return (NewVChan (p, id) );
}

int PPIF::DiscSync (void* v)

{
  VChannelPtr vc = (VChannelPtr)v;
  DeleteVChan (vc);

  return (0);
}

int PPIF::SendSync (void* v, void *data, int size)

{
  if (MPI_SUCCESS == MPI_Ssend (data, size, MPI_BYTE,
                                ((MPIVChannel*)v)->p, ((MPIVChannel*)v)->chanid, COMM) )
    return (size);
  else
    return (-1);
}

int PPIF::RecvSync (void* v, void *data, int size)

{
  int count = -1;
  MPI_Status status;

  if (MPI_SUCCESS == MPI_Recv (data, size, MPI_BYTE,
                               ((MPIVChannel*)v)->p, ((MPIVChannel*)v)->chanid, COMM, &status) )
    MPI_Get_count (&status, MPI_BYTE, &count);

  return (count);
}


/****************************************************************************/
/*                                                                          */
/* Asynchronous communication                                               */
/*                                                                          */
/****************************************************************************/

VChannelPtr PPIF::ConnASync (int p, int id)

{
  return (NewVChan (p,id) );
}

int PPIF::InfoAConn (void* v)

{
  return (v ? 1 : -1);
}


int PPIF::DiscASync (void* v)

{
  DeleteVChan ((MPIVChannel*)v);
  return (PPIF_SUCCESS);
}

int PPIF::InfoADisc (void* v)

{
  return (true);
}

#define REQUEST_HEAP

msgid PPIF::SendASync (void* v, void *data, int size, int *error)

{
#  ifdef REQUEST_HEAP
  MPI_Request *req;

  if (req = (MPI_Request*)malloc (sizeof (MPI_Request) ) )
  {
    if (MPI_SUCCESS == MPI_Isend (data, size, MPI_BYTE,
                                  ((MPIVChannel*)v)->p, ((MPIVChannel*)v)->chanid, COMM, req) )
    {
      *error = false;
      return ((msgid) req);
    }
  }

#  else
  MPI_Request Req;
  if (MPI_SUCCESS == MPI_Isend (data, size, MPI_BYTE,
                                ((MPIVChannel*)v)->p, ((MPIVChannel*)v)->chanid, COMM, &Req) )
  {
    *error = false;
    return ((msgid) Req);
  }
#  endif

  *error = true;
  return NULL;
}


msgid PPIF::RecvASync (void* v, void *data, int size, int *error)

{
#  ifdef REQUEST_HEAP
  MPI_Request *req;

  if (req = (MPI_Request*)malloc (sizeof (MPI_Request) ) )
  {
    if (MPI_SUCCESS == MPI_Irecv (data, size, MPI_BYTE,
                                  ((MPIVChannel*)v)->p, ((MPIVChannel*)v)->chanid, COMM, req) )
    {
      *error = false;
      return ((msgid) req);
    }
  }

#  else
  MPI_Request Req;

  if (MPI_SUCCESS == MPI_Irecv (data, size, MPI_BYTE,
                                ((MPIVChannel*)v)->p, ((MPIVChannel*)v)->chanid, COMM, &Req) )
  {
    *error = false;
    return ((msgid) Req);
  }

#  endif

  *error = true;
  return (NULL);
}


int PPIF::InfoASend (void* v, msgid m)

{
  MPI_Status status;
  int complete;

#  ifdef REQUEST_HEAP
  if (m)
  {
    if (MPI_SUCCESS == MPI_Test ((MPI_Request *) m, &complete, &status) )
    {
      if (complete) free (m);

      return (complete);        /* complete is true for completed send, false otherwise */
    }
  }

#  else
  MPI_Request Req = (MPI_Request) m;

  if (MPI_SUCCESS == MPI_Test (&Req, &complete, &status) )
  {
    return (complete);          /* complete is true for completed send, false otherwise */
  }

#  endif

  return (-1);          /* return -1 for FAILURE */
}


int PPIF::InfoARecv (void* v, msgid m)
{
  MPI_Status status;
  int complete;

#  ifdef REQUEST_HEAP
  if (m)
  {
    if (MPI_SUCCESS == MPI_Test ((MPI_Request *) m, &complete, &status) )
    {
      if (complete) free (m);

      return (complete);        /* complete is true for completed receive, false otherwise */
    }
  }

#  else
  MPI_Request Req = (MPI_Request) m;

  if (MPI_SUCCESS == MPI_Test (&Req, &complete, &status) )
  {
    return (complete);          /* complete is true for completed receive, false otherwise */
  }

#  endif

  return (-1);          /* return -1 for FAILURE */
}


/****************************************************************************/
/*                                                                          */
/* Miscellaneous                                                            */
/*                                                                          */
/****************************************************************************/

void PPIF::PrintHostMessage (const char *s)

{
  printf ("%s", s);
}
