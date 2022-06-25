// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      sm.h                                                          */
/*                                                                          */
/* Purpose:   interfaces to sparse matrix handling routines                 */
/*                                                                          */
/* Author:    Nicolas Neuss                                                 */
/*            email: Nicolas.Neuss@IWR.Uni-Heidelberg.De                    */
/*                                                                          */
/* History:   01.98 begin sparse matrix routines                            */
/*                                                                          */
/* Note:      The files sm.[ch], blasm.[ch] may be obtained also in a       */
/*            standalone form under the GNU General Public License.         */
/*            The use inside of UG under the actual UG license              */
/*            is allowed.                                                   */
/*                                  HD, 13.7.99,  Nicolas Neuss.            */
/*                                                                          */
/****************************************************************************/

#ifndef __SM__
#define __SM__

#include "namespace.h"
#include "ugtypes.h"

#include <cstddef>

START_UGDIM_NAMESPACE

/****************************************************************************/
/*																			*/
/* The sparse matrix structure                                                                          */
/*																			*/
/****************************************************************************/

typedef struct {

  SHORT nrows;                         /* number of rows                        */
  SHORT ncols;                         /* number of columns                     */
  SHORT N;                             /* total number of nonzero elements      */

  SHORT *row_start;                    /* pointer to nrows+1 row starts         */
  SHORT *col_ind;                      /* pointer to N column indices           */
  SHORT *offset;                       /* pointer to N value offsets            */

  SHORT components[1];

} SPARSE_MATRIX;
/* usually there will be nrows+2*N SHORTs allocated after this structure  */

/****************************************************************************/
/*																			*/
/* Routines for sparse matrix handling                                                                  */
/*																			*/
/****************************************************************************/

INT ComputeSMSizeOfArray (SHORT nr, SHORT nc, const SHORT *comps,
                          SHORT *NPtr, SHORT *NredPtr);
INT Array2SM             (SHORT nr, SHORT nc, const SHORT *comps,
                          SPARSE_MATRIX *sm);
INT String2SMArray       (SHORT n, char *str, SHORT *comps);

INT SM_Compute_Reduced_Size    (SPARSE_MATRIX *sm);

END_UGDIM_NAMESPACE

#endif /* __SM__ */
