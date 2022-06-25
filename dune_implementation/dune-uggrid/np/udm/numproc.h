// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:        numproc.h                                                       */
/*                                                                          */
/* Purpose: definition of the basic num proc type                           */
/*                                                                          */
/* Author:  Peter Bastian                                                   */
/*          Institut fuer Computeranwendungen III                           */
/*          Universitaet Stuttgart                                          */
/*          Pfaffenwaldring 27                                              */
/*          70569 Stuttgart                                                 */
/*          email: ug@iwr.uni-stuttgart.de                                  */
/*                                                                          */
/* History: November 29, 1996                                               */
/*                                                                          */
/* Remarks:                                                                 */
/*                                                                          */
/****************************************************************************/



/****************************************************************************/
/*                                                                          */
/* auto include mechanism and other include files                           */
/*                                                                          */
/****************************************************************************/

#ifndef __NUMPROC__
#define __NUMPROC__

#include "ugenv.h"
#include "gm.h"

#include "namespace.h"

START_UGDIM_NAMESPACE

/****************************************************************************/
/*                                                                          */
/* defines in the following order                                           */
/*                                                                          */
/* compile time constants defining static data size (i.e. arrays)                       */
/* other constants                                                                                                                      */
/* macros                                                                                                                                       */
/*                                                                                                                                                      */
/****************************************************************************/

/* status for num procs  */
#define NP_NOT_INIT             0
#define NP_NOT_ACTIVE   1
#define NP_ACTIVE               2
#define NP_EXECUTABLE   3
#define NP_PDT_SIZE             32

/* macros for NP_BASE access */
#define NP_MG(p)                (((NP_BASE*)(p))->mg)
#define NP_FMT(p)               MGFORMAT(((NP_BASE*)(p))->mg)
#define NP_GRID(p,l)    GRID_ON_LEVEL(NP_MG(p),l)
#define NP_STATUS(p)    (((NP_BASE*)(p))->status)
#define NP_INIT(p)              (((NP_BASE*)(p))->Init)
#define NP_DISPLAY(p)   (((NP_BASE*)(p))->Display)
#define NP_EXECUTE(p)   (((NP_BASE*)(p))->Execute)

/****************************************************************************/
/*                                                                          */
/* definition of exported data structures                                   */
/*                                                                          */
/****************************************************************************/

struct np_base {

  /* data */
  NS_PREFIX ENVVAR v;                             /* is an environment variable                                   */
  MULTIGRID *mg;                        /* associated multigrid                         */
  INT status;                           /* has a status, NO type and size...                    */

  /* functions */
  INT (*Init)(struct np_base *, INT, char **);    /* initializing routine   */
  INT (*Display)(struct np_base *);                      /* Display routine */
  INT (*Execute)(struct np_base *, INT, char **);        /* Execute routine */
};
typedef struct np_base NP_BASE;

typedef INT (*InitNumProcProcPtr)(NP_BASE *, INT, char **);
typedef INT (*DisplayNumProcProcPtr)(NP_BASE *);
typedef INT (*ExecuteNumProcProcPtr)(NP_BASE *, INT, char **);

typedef INT (*ConstructorProcPtr)(NP_BASE *);

typedef struct
{
  NS_PREFIX ENVVAR v;                         /* class name                           */
  INT size;                         /* size of the object                   */
  ConstructorProcPtr Construct;     /* construct one object of this class   */
} NP_CONSTRUCTOR;

/****************************************************************************/
/*                                                                                                                                                      */
/* definition of exported functions                                                                                     */
/*                                                                                                                                                      */
/****************************************************************************/

INT                             CreateClass                     (const char *classname, INT size, ConstructorProcPtr Construct);
NP_CONSTRUCTOR *GetConstructor          (const char *classname);
INT                             CreateObject            (MULTIGRID *theMG, const char *objectname, const char *classname);

NP_BASE                 *GetNumProcByName   (const MULTIGRID *theMG, const char *objectname, const char *classname);
INT                             MGListNPClasses         (const MULTIGRID *theMG);
INT             MGListNPsOfClass        (const MULTIGRID *theMG, const char *ClassName);
INT             MGListAllNPs            (const MULTIGRID *theMG);
INT             ListNumProc                     (NP_BASE *np);

INT             InitNumProcManager  (void);

END_UGDIM_NAMESPACE

#endif
