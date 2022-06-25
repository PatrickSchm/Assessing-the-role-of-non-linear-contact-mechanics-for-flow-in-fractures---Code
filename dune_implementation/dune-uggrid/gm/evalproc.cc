// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*																			*/
/* File:	  evalproc.c													*/
/*																			*/
/* Purpose:   evaluation functions											*/
/*																			*/
/* Author:	  Peter Bastian                                                                                                 */
/*			  Interdisziplinaeres Zentrum fuer Wissenschaftliches Rechnen	*/
/*			  Universitaet Heidelberg										*/
/*			  Im Neuenheimer Feld 368										*/
/*			  6900 Heidelberg												*/
/*			  internet: ug@ica3.uni-stuttgart.de			                        */
/*																			*/
/* History:   31.03.92 begin, ug version 2.0								*/
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

#include <cstring>
#include <cstdio>
#include <cstdlib>

#include "general.h"

#include "gm.h"
#include "ugenv.h"
#include "evm.h"
#include <dev/ugdevices.h>
#include "shapes.h"
#include "elements.h"

USING_UG_NAMESPACES

/****************************************************************************/
/*																			*/
/* definition of variables global to this source file only (static!)		*/
/*																			*/
/****************************************************************************/

/* environment directory and item IDs used in this source file */
static INT theEEvalProcDirID;
static INT theElemValVarID;

static INT theMEvalProcDirID;

static INT theVEvalProcDirID;
static INT theElemVectorVarID;

/****************************************************************************/
/*																			*/
/* forward declarations of functions used before they are defined			*/
/*																			*/
/****************************************************************************/


/****************************************************************************/
/*
   GetElementValueEvalProc - Get element value plot proceedure in evironement from name

   SYNOPSIS:
   EVALUES *GetElementValueEvalProc (const char *name);

   PARAMETERS:
   .  name -

   DESCRIPTION:
   This function gets element value plot proceedure in evironement from name.

   RETURN VALUE:
   EVALUES *
   .n     pointer to
   .n     NULL if error occured.
 */
/****************************************************************************/

EVALUES * NS_DIM_PREFIX GetElementValueEvalProc (const char *name)
{
  if (ChangeEnvDir("/ElementEvalProcs")==NULL) return(NULL);
  return((EVALUES*) SearchEnv(name,".",theElemValVarID,SEARCHALL));
}

/****************************************************************************/
/*
   GetElementVectorEvalProc -

   SYNOPSIS:
   EVECTOR *GetElementVectorEvalProc (const char *name);

   PARAMETERS:
   .  name -

   DESCRIPTION:
   This function gets element vector plot proceedure in evironement from name.

   RETURN VALUE:
   EVECTOR *
   .n      pointer to
   .n      NULL if not found.
 */
/****************************************************************************/

EVECTOR * NS_DIM_PREFIX GetElementVectorEvalProc (const char *name)
{
  if (ChangeEnvDir("/ElementVectorEvalProcs")==NULL) return(NULL);
  return((EVECTOR*) SearchEnv(name,".",theElemVectorVarID,SEARCHALL));
}

/****************************************************************************/
/*
   InitEvalProc	- Init this file

   SYNOPSIS:
   INT InitEvalProc ();

   PARAMETERS:
   .  void -

   DESCRIPTION:
   This function inits this file.

   RETURN VALUE:
   INT
   .n    0 if ok
   .n    1 if error occured.
 */
/****************************************************************************/

INT NS_DIM_PREFIX InitEvalProc ()
{
  /* install the /ElementEvalProcs directory */
  if (ChangeEnvDir("/")==NULL)
  {
    PrintErrorMessage('F',"InitEvalProc","could not changedir to root");
    return(__LINE__);
  }
  theEEvalProcDirID = GetNewEnvDirID();
  if (MakeEnvItem("ElementEvalProcs",theEEvalProcDirID,sizeof(ENVDIR))==NULL)
  {
    PrintErrorMessage('F',"InitEvalProc","could not install '/ElementEvalProcs' dir");
    return(__LINE__);
  }
  theElemValVarID = GetNewEnvVarID();

  /* install the /MatrixEvalProcs directory */
  if (ChangeEnvDir("/")==NULL)
  {
    PrintErrorMessage('F',"InitEvalProc","could not changedir to root");
    return(__LINE__);
  }
  theMEvalProcDirID = GetNewEnvDirID();
  if (MakeEnvItem("MatrixEvalProcs",theMEvalProcDirID,sizeof(ENVDIR))==NULL)
  {
    PrintErrorMessage('F',"InitEvalProc","could not install '/MatrixEvalProcs' dir");
    return(__LINE__);
  }

  /* install the /ElementVectorEvalProcs directory */
  if (ChangeEnvDir("/")==NULL)
  {
    PrintErrorMessage('F',"InitEvalProc","could not changedir to root");
    return(__LINE__);
  }
  theVEvalProcDirID = GetNewEnvDirID();
  if (MakeEnvItem("ElementVectorEvalProcs",theVEvalProcDirID,sizeof(ENVDIR))==NULL)
  {
    PrintErrorMessage('F',"InitEvalProc","could not install '/ElementVectorEvalProcs' dir");
    return(__LINE__);
  }
  theElemVectorVarID = GetNewEnvVarID();

  return (0);
}
