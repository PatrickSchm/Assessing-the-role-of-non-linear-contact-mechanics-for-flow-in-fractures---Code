// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      initnp.c                                                      */
/*                                                                          */
/* Purpose:   call the init routines of the numerics module		                        */
/*																			*/
/* Author:	  Klaus Johannsen		                                                                                */
/*			  Institut fuer Computeranwendungen III                                                 */
/*			  Universitaet Stuttgart										*/
/*			  Pfaffenwaldring 27											*/
/*			  70569 Stuttgart												*/
/*			  email: ug@ica3.uni-stuttgart.de							    */
/*																			*/
/* History:   27.02.95 begin, ug version 3.0								*/
/*																			*/
/* Remarks:                                                                                                                             */
/*																			*/
/****************************************************************************/


/****************************************************************************/
/*																			*/
/* include files															*/
/*			  system include files											*/
/*			  application include files                                                                     */
/*																			*/
/****************************************************************************/

#include <config.h>
#include <cstdio>

#include "np.h"
#include "general.h"
#include "udm.h"
#include "formats.h"

#include "initnumerics.h"
#include "numproc.h"

USING_UG_NAMESPACES

/****************************************************************************/
/*                                                                          */
/* definition of variables global to this source file only (static!)        */
/*                                                                          */
/****************************************************************************/


/****************************************************************************/
/*D
   InitNumerics	- Call the inits for the grid manger module

   SYNOPSIS:
   INT InitNumerics ();

   PARAMETERS:
   .  void

   DESCRIPTION:
   This function does initialization of the np subsystem.
   It is called in InitUG.

   RETURN VALUE:
   INT
   .n    0 if ok
   .n    1 if error occured.
   D*/
/****************************************************************************/

INT NS_DIM_PREFIX InitNumerics ()
{
  INT err;

  /* init procs */
  if ((err=InitNumProcManager())!=0) {
    SetHiWrd(err,__LINE__);
    return (err);
  }

  /* init user data manager */
  if ((err=InitUserDataManager())!=0) {
    SetHiWrd(err,__LINE__);
    return (err);
  }
  if ((err=InitFormats())!=0) {
    SetHiWrd(err,__LINE__);
    return (err);
  }

  return (0);
}
