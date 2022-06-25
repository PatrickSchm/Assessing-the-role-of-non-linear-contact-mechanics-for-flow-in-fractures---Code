// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      ugblas.c                                                      */
/*                                                                          */
/* Purpose:   basic linear algebra routines                                 */
/*            working on the matrix-vector and                              */
/*            matrix-blockvector structure                                  */
/*                                                                          */
/* Author:    Henrik Rentz-Reichert                                         */
/*            Institut fuer Computeranwendungen III                         */
/*            Universitaet Stuttgart                                        */
/*            Pfaffenwaldring 27                                            */
/*            70569 Stuttgart                                               */
/*                                                                          */
/* blockvector routines from:                                               */
/*            Christian Wrobel                                              */
/*            Institut fuer Computeranwendungen III                         */
/*            Universitaet Stuttgart                                        */
/*            Pfaffenwaldring 27                                            */
/*            70569 Stuttgart                                               */
/*                                                                          */
/* email:     ug@ica3.uni-stuttgart.de                                      */
/*                                                                          */
/* History:   06.03.95 begin, ug version 3.0                                */
/*            28.09.95 blockvector routines implemented (Christian Wrobel)  */
/*            22.08.03 corrections concering skip flags for many components */
/*                     in a vector data descriptor. Not adapted for the     */
/*                     block vectors, AMG and Galerkin approximations!      */
/*                     Switch on by macro _XXL_SKIPFLAGS_ (else not active).*/
/*                                                                          */
/* Remarks:                                                                 */
/*                                                                          */
/****************************************************************************/

/****************************************************************************/
/*                                                                          */
/* include files                                                            */
/* system include files                                                     */
/* application include files                                                */
/*                                                                          */
/****************************************************************************/

#include <config.h>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <cmath>
#include <cassert>

#include "ugtypes.h"
#include "architecture.h"
#include "misc.h"
#include "evm.h"
#include "gm.h"
#include "algebra.h"
#include <dev/ugdevices.h>
#include "general.h"
#include "debug.h"
#ifdef ModelP
#include "pargm.h"
#include "parallel.h"
#endif

#include "np.h"
#include "disctools.h"
#include "ugblas.h"

USING_UG_NAMESPACES
  using namespace PPIF;

/****************************************************************************/
/*                                                                          */
/* definition of variables global to this source file only (static!)        */
/*                                                                          */
/****************************************************************************/

static INT trace_ugblas=0;

REP_ERR_FILE

/****************************************************************************/
/*                                                                          */
/* forward declarations of functions used before they are defined           */
/*                                                                          */
/****************************************************************************/

INT NS_DIM_PREFIX TraceUGBlas (INT trace)
{
  return (trace_ugblas = trace);
}

/****************************************************************************/
/** \brief Check wether two VECDATA_DESCs match

 * @param x - vector data descriptor
 * @param y - vector data descriptor

   This function checks wether the two VECDATA_DESCs match.

   \return <ul>
   INT
   .n    NUM_OK if ok
   .n    NUM_DESC_MISMATCH if the type descriptors does not match
 */
/****************************************************************************/

INT NS_DIM_PREFIX VecCheckConsistency (const VECDATA_DESC *x, const VECDATA_DESC *y)
{
  INT vtype;

  for (vtype=0; vtype<NVECTYPES; vtype++)
    if (VD_ISDEF_IN_TYPE(x,vtype))
    {
      /* consistency check: the x-types should include the y-types */
      if (!VD_ISDEF_IN_TYPE(y,vtype))
        REP_ERR_RETURN (NUM_DESC_MISMATCH);

      /* consistency check: the x-nComp should be equal to the y-nComp */
      if (VD_NCMPS_IN_TYPE(x,vtype) != VD_NCMPS_IN_TYPE(y,vtype))
        REP_ERR_RETURN (NUM_DESC_MISMATCH);
    }
  return (NUM_OK);
}

/****************************************************************************/
/** \brief Check the consistency of the data descriptors

 * @param x - vector data descriptor
 * @param M - matrix data descriptor
 * @param y - vector data descriptor


   This function checks whether the VECDATA_DESCs and the MATDATA_DESC
   match.

   \return <ul>
   INT
   .n    NUM_OK if ok
   .n    NUM_DESC_MISMATCH if the type descriptors not match
   .n    NUM_BLOCK_TOO_LARGE if the blocks are larger as MAX_SINGLE_VEC_COMP
 */
/****************************************************************************/

INT NS_DIM_PREFIX MatmulCheckConsistency (const VECDATA_DESC *x, const MATDATA_DESC *M, const VECDATA_DESC *y)
{
  INT rtype,ctype,mtype,maxsmallblock;

  /* consistency check: the formats should match */
  maxsmallblock = 0;
  for (mtype=0; mtype<NMATTYPES; mtype++)
    if (MD_ISDEF_IN_MTYPE(M,mtype)>0)
    {
      rtype = MTYPE_RT(mtype);
      ctype = MTYPE_CT(mtype);
      if (MD_ROWS_IN_MTYPE(M,mtype) != VD_NCMPS_IN_TYPE(x,rtype))
        REP_ERR_RETURN (NUM_DESC_MISMATCH);
      if (MD_COLS_IN_MTYPE(M,mtype) != VD_NCMPS_IN_TYPE(y,ctype))
        REP_ERR_RETURN (NUM_DESC_MISMATCH);

      maxsmallblock = MAX(maxsmallblock, VD_NCMPS_IN_TYPE(x,rtype));
      maxsmallblock = MAX(maxsmallblock, VD_NCMPS_IN_TYPE(y,ctype));
    }

  /* check size of the largest small block, if too small:
     increase MAX_SINGLE_VEC_COMP and recompile */
  assert (maxsmallblock <= MAX_SINGLE_VEC_COMP);

        #ifdef NDEBUG
  /* check also in case NDEBUG is defined (assert off)	*/
  if (maxsmallblock > MAX_SINGLE_VEC_COMP)
    REP_ERR_RETURN (NUM_BLOCK_TOO_LARGE);
        #endif

  return (NUM_OK);
}

