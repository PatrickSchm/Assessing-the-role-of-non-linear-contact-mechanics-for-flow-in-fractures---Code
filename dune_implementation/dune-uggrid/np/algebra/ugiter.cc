// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      ugiter.c                                                      */
/*                                                                          */
/* Purpose:   iterative schemes and decompositions                          */
/*            working on the matrix-vector structure                        */
/*                                                                          */
/* Author:    Henrik Rentz-Reichert                                         */
/*            Institut fuer Computeranwendungen III                         */
/*            Universitaet Stuttgart                                        */
/*            Pfaffenwaldring 27                                            */
/*            70569 Stuttgart                                               */
/* email:     ug@ica3.uni-stuttgart.de                                      */
/*                                                                          */
/* History:   25.03.95 begin, ug version 3.0                                */
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

#include "gm.h"
#include "np.h"
#include "ugblas.h"

USING_UG_NAMESPACES

/****************************************************************************/
/** \brief Set index field in vectors of the specified types

   \param g - pointer to grid

   This function sets index field in vectors of the specified types.

   \return
   NUM_OK
 */
/****************************************************************************/

INT NS_DIM_PREFIX l_setindex (GRID *g)
{
  VECTOR *v,*first_v;
  INT i;

  first_v = FIRSTVECTOR(g);

  /* enumerate VECTORS starting with 1 (so return value if decomp failed will be negative) */
  i = 1;
  L_VLOOP__CLASS(v,first_v,EVERY_CLASS)
  VINDEX(v) = i++;

  return (NUM_OK);
}
