// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      ugblas.h                                                      */
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
/*            blockvector routines from:                                    */
/*            Christian Wrobel                                              */
/*            Institut fuer Computeranwendungen III                         */
/*            Universitaet Stuttgart                                        */
/*            Pfaffenwaldring 27                                            */
/*            70569 Stuttgart                                               */
/*                                                                          */
/*            email: ug@ica3.uni-stuttgart.de                               */
/*                                                                          */
/* History:   06.03.95 begin, ug version 3.0                                */
/*            28.09.95 blockvector routines implemented (Christian Wrobel)  */
/*                                                                          */
/* Remarks:                                                                 */
/*                                                                          */
/****************************************************************************/



/****************************************************************************/
/*                                                                                                                                                      */
/* auto include mechanism and other include files                                                       */
/*                                                                                                                                                      */
/****************************************************************************/

#ifndef __UGBLAS__
#define __UGBLAS__

#include "np.h"

#include "namespace.h"

START_UGDIM_NAMESPACE

/****************************************************************************/
/*                                                                                                                                                      */
/* defines in the following order                                                                                       */
/*                                                                                                                                                      */
/*                compile time constants defining static data size (i.e. arrays)        */
/*                other constants                                                                                                       */
/*                macros                                                                                                                        */
/*                                                                                                                                                      */
/****************************************************************************/

enum TRACE_BLAS {

  TRBL_NO,
  TRBL_PARAMS,
  TRBL_VECS
};

/* the vector loops used                                                                                                        */
#define L_VLOOP__CLASS(v,first_v,c)                                                                                     \
  for (v=first_v; v!= NULL; v=SUCCVC(v))                          \
    if (VCLASS(v)>=c)

#define S_BELOW_VLOOP__TYPE(l,fl,tl,v,mg,t)                                                                     \
  for (l=fl; l<tl; l++)                                                           \
    for (v=FIRSTVECTOR(GRID_ON_LEVEL(mg,l)); v!= NULL; v=SUCCVC(v)) \
      if ((VTYPE(v)==t) && (FINE_GRID_DOF(v)))

#define S_FINE_VLOOP__TYPE(tl,v,mg,t)                                                                           \
  for (v=FIRSTVECTOR(GRID_ON_LEVEL(mg,tl)); v!= NULL; v=SUCCVC(v)) \
    if ((VTYPE(v)==t) && (NEW_DEFECT(v)))

/****************************************************************************/
/*                                                                                                                                                      */
/* function declarations                                                                                                        */
/*                                                                                                                                                      */
/****************************************************************************/

INT  VecCheckConsistency                        (const VECDATA_DESC *x, const VECDATA_DESC *y);
INT  MatmulCheckConsistency             (const VECDATA_DESC *x, const MATDATA_DESC *M, const VECDATA_DESC *y);
INT  TraceUGBlas                                        (INT trace);

END_UGDIM_NAMESPACE

#endif
