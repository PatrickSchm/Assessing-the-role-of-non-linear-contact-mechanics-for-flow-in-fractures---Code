// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      ppif.h                                                        */
/*                                                                          */
/* Purpose:   header file for parallel processor interface                  */
/*                                                                          */
/* Author:    Peter Bastian / Klaus Birken                                  */
/*                                                                          */
/* History:   17 Aug 1992 begin                                             */
/*            14 Sep 1993 pass argc, argv from main to InitPPIF             */
/*            16 Sep 1993 async send/recv return msgid now                  */
/*            951106 kb  changed parameters for InitPPIF()                  */
/*            970213 kb  added C++ class interface                          */
/*                                                                          */
/* Remarks:                                                                 */
/*                                                                          */
/****************************************************************************/


/****************************************************************************/
/*                                                                          */
/* auto include mechanism and other include files                           */
/*                                                                          */
/****************************************************************************/

#ifndef __PPIF__
#define __PPIF__

/****************************************************************************/
/*                                                                          */
/* data structures exported by the corresponding source file                */
/*                                                                          */
/****************************************************************************/

typedef void *VChannelPtr;   /* dummy definition, any pointer type is ok    */
typedef void *msgid;         /* dummy definition, any pointer type is ok    */

#define NO_MSGID ((msgid)-1L) /* a special value that should never be re-   */
                              /* turned as a msgid, like NULL for pointers  */

namespace PPIF {

enum directions {north,east,south,west,up,down};

#define RAND_MSG_SIZE 128   /* max size of random messages                                      */

#define PPIF_SUCCESS    0       /* Return value for success                     */
#define PPIF_FAILURE    1       /* Return value for failure                     */

/****************************************************************************/
/*                                                                          */
/* definition of exported global variables                                  */
/*                                                                          */
/****************************************************************************/

/* id's */
extern int me;                     /* my processor id                       */
extern int master;                 /* id of master processor                */
extern int procs;                  /* number of processors in the network   */

/* 3D array structure */
extern int DimX,DimY,DimZ;         /* 3D array dimensions, may be 1 !       */

/* Tree structure */
extern int degree;                 /* degree of downtree nodes              */
extern VChannelPtr uptree;         /* channel uptree                        */
extern VChannelPtr downtree[];     /* channels downtree (may be empty)      */
extern int slvcnt[];                   /* number of processors in subtree       */

/****************************************************************************/
/*                                                                          */
/* function declarations                                                    */
/*                                                                          */
/****************************************************************************/


/* initialization & shutdown */
int         InitPPIF         (int *argcp, char ***argvp);
int         ExitPPIF         (void);

/* tree oriented functions */
int         Broadcast        (void *data, int size);
int         Concentrate      (void *data, int size);
int         GetConcentrate   (int slave, void *data, int size);
int         Spread           (int slave, void *data, int size);
int         GetSpread        (void *data, int size);
int         Synchronize      (void);

/* synchronous communication */
VChannelPtr ConnSync         (int p, int id);
int         DiscSync         (VChannelPtr vc);
int         SendSync         (VChannelPtr vc, void *data, int size);
int         RecvSync         (VChannelPtr vc, void *data, int size);

/* asynchronous communication */
VChannelPtr ConnASync        (int p, int id);
int         DiscASync        (VChannelPtr vc);
msgid       SendASync        (VChannelPtr vc, void *data, int size, int *error);
msgid       RecvASync        (VChannelPtr vc, void *data, int size, int *error);
int         InfoAConn        (VChannelPtr vc);
int         InfoADisc        (VChannelPtr vc);
int         InfoASend        (VChannelPtr vc, msgid m);
int         InfoARecv        (VChannelPtr vc, msgid m);

/* miscellaneous */
void        PrintHostMessage (const char *s);

}  // end namespace PPIF


/****************************************************************************/

#endif
