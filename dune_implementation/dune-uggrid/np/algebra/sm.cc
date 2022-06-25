// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
/****************************************************************************/
/*                                                                          */
/* File:      sm.c                                                          */
/*                                                                          */
/* Purpose:   sparse matrix handling routines                               */
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

#include <config.h>

#include <float.h>
#include <cmath>
#include <cstddef>

#include "sm.h"
#include "debug.h"

#define ERR_RETURN(x) REP_ERR_RETURN(x)

REP_ERR_FILE

#include "udm.h"  /* for MAX_MAT_COMP */

/****************************************************************************/
/** \brief Computes the size of a sparse matrix array

   \param nr - number of rows
   \param nc - number of columns
   \param comps - pointer to integer array
   \param NPtr - here N is stored
   \param NredPtr - here Nred is stored

   Positive numbers in the comps-array are transfered,
   negative ones mean non-existing entries in the sparse matrix. Equal
   positive numbers mean identified fields.

   \return <ul>
   <li> 0 ok </li>
   <li> 1 offset too large (increase MAX_MAT_COMP and recompile) </li>
   </ul>
 */
/****************************************************************************/

NS_PREFIX INT NS_DIM_PREFIX ComputeSMSizeOfArray (SHORT nr, SHORT nc, const SHORT *comps,
                                                  SHORT *NPtr, SHORT *NredPtr)
{
  SHORT off,N,Nred;
  SHORT flag[MAX_NDOF];
  int i,j;

  /* reset flag field */
  for (i=0; i<MAX_NDOF; i++)
    flag[i] = 0;

  N = Nred = 0;
  for (i=0; i<nr; i++)
  {
    for (j=0; j<nc; j++)
    {
      off = comps[i*nc+j];
      if (off>=0)
      {
        if (off>=MAX_NDOF) return(1);

        N++;
        if (flag[off]==0)
        {
          Nred++;
          flag[off] = 1;
        }
      }
    }
  }

  *NPtr = N;
  *NredPtr = Nred;

  return (0);
}

/****************************************************************************/
/** \brief Computes the sparse matrix form of an array

   \param nr - number of rows
   \param nc - number of columns
   \param comps - pointer to integer array
   \param sm - sparse matrix

   Computes the sparse matrix form of an offset
   array. Positive numbers in the comps-array are transfered, negative
   ones mean non-existing entries in the sparse matrix. Equal positive
   numbers mean identified fields. It is assumed that there is enough
   space in the arrays of the sparse matrix.

   \return <ul>
   <li> 0 ok </li>
   <li> 1 offset too large (increase MAX_MAT_COMP and recompile) </li>
   </ul>
 */
/****************************************************************************/

NS_PREFIX INT NS_DIM_PREFIX Array2SM (SHORT nr, SHORT nc, const SHORT *comps, SPARSE_MATRIX *sm)
{
  SHORT off,posc,N,Nred;
  SHORT flag[MAX_NDOF];
  int i,j;

  INT error = ComputeSMSizeOfArray(nr, nc, comps, &N, &Nred);
  if (error)
    return error;

  /* reset flag field */
  for (i=0; i<MAX_NDOF; i++)
    flag[i] = 0;

  sm->nrows = nr;
  sm->ncols = nc;
  sm->N = N;

  sm->row_start = &(sm->components[0]);
  sm->col_ind = sm->row_start+nr+1;
  sm->offset = sm->col_ind+N;

  sm->row_start[0] = posc = 0;
  for (i=0; i<nr; i++)
  {
    for (j=0; j<nc; j++)
    {
      off = comps[i*nc+j];
      if (off>=0)
      {
        if (off>=MAX_NDOF)
          return(1);

        sm->col_ind[posc] = j;
        sm->offset[posc++] = off;

        if (flag[off]==0)
          flag[off] = 1;
      }
    }
    sm->row_start[i+1] = posc;
  }

  return (0);
}

/****************************************************************************/
/** \brief Transforms a string to a SM array

   \param n - size (i.e. rows*cols)
   \param str - pointer to char array consisting of [*0a-z]
   \param comps - pointer to integer array

   Transforms a string to a SM array. * means a non-zero entry, 0
   means a zero entry. a-z are used for identification of positions
   (they get the same offset). It is assumed that there is enough
   space in the sparse matrix array.

   \return <ul>
   <li> 0 ok </li>
   <li> 1 wrong format </li>
   </ul>
 */
/****************************************************************************/

NS_PREFIX INT NS_DIM_PREFIX String2SMArray (SHORT n, char *str, SHORT *comps)
{
  SHORT off;
  int i;
  char c;
  SHORT pos[26];         /* offset belonging to character */

  /* reset identification field */
  for (i=0; i<26; i++)
    pos[i] = -1;

  off=0;
  for (i=0; i<n; i++)
  {
    /* skip blanks */
    while ((c=*str++) != '\0')
    {
      if (c!=' ' && c!='\t' && c!= '\n')
        break;
    }
    if (c=='\0') return(1);

    /* zero entry? */
    if (c=='0')
    {
      *comps++ = -1;
      continue;
    }

    /* standard nonzero entry? */
    if (c=='*')
    {
      *comps++ = off++;
      continue;
    }

    if ((c<'a') || (c>'z')) return(-1);

    /* identified nonzero entry */
    if (pos[c-'a']>=0)
      *comps++ = pos[c-'a'];
    else
    {
      *comps++ = off;
      pos[c-'a'] = off++;
    }
  }

  return(0);
}

/****************************************************************************/
/** \brief Computes the reduced size of a sparse matrix

   \param sm - sparse matrix

   Computes the reduced size of a sparse matrix, i.e. takes possible
   identification into account.
   Warning: This is an O(N^2)-algorithm, but N should be moderate
   in comparison with the number of MATRIX structures anyhow.

   \return <ul>
   <li> positive: reduced size </li>
   <li> negative: an error occured </li>
   </ul>
 */
/****************************************************************************/

NS_PREFIX INT NS_DIM_PREFIX SM_Compute_Reduced_Size (SPARSE_MATRIX *sm)
{
  INT i, j, off;
  INT ident_count;

  if (sm->N<0)
    ERR_RETURN (-1);              /* Error: sparse matrix has negative size */

  ident_count = 0;
  for (i=0; i<sm->N; i++)
  {
    off = sm->offset[i];
    for (j=i+1; j<sm->N; j++)
    {
      if (sm->offset[j] == off)
      {
        /* identification: increase the counter and break the loop. */
        ident_count++;
        break;
      }
    }
  }

  return(sm->N-ident_count);
}
