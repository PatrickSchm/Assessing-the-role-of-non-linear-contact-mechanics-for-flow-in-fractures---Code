/****************************************************************************/
/*                                                                          */
/* File:      shapes.c                                                      */
/*                                                                          */
/* Purpose:   shape functions for triangles and quadrilaterals              */
/*                                                                          */
/* Author:    Peter Bastian                                                 */
/*            Interdisziplinaeres Zentrum fuer Wissenschaftliches Rechnen   */
/*            Universitaet Heidelberg                                       */
/*            Im Neuenheimer Feld 368                                       */
/*            6900 Heidelberg                                               */
/* internet:  ug@ica3.uni-stuttgart.de                                      */
/*                                                                          */
/* History:   08.04.92 begin, ug version 2.0                                */
/*            20.11.94 moved shapes.c from ug to cd folder                  */
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
#include <cmath>
#include <cassert>
#include <cstddef>

#include "ugtypes.h"
#include "architecture.h"
#include "misc.h"
#include "gm.h"
#include "evm.h"
#include "shapes.h"
#include "general.h"


USING_UG_NAMESPACE
  USING_UGDIM_NAMESPACE

/****************************************************************************/
/*                                                                          */
/* defines in the following order                                           */
/*                                                                          */
/*          compile time constants defining static data size (i.e. arrays)  */
/*          other constants                                                 */
/*          macros                                                          */
/*                                                                          */
/****************************************************************************/

#define SMALL_DIFF     1e-20
#define MAX_ITER       20

/****************************************************************************/
/*                                                                          */
/* data structures used in this source file (exported data structures are   */
/* in the corresponding include file!)                                      */
/*                                                                          */
/****************************************************************************/

/****************************************************************************/
/*                                                                          */
/* definition of exported global variables                                  */
/*                                                                          */
/****************************************************************************/

/****************************************************************************/
/*                                                                          */
/* definition of variables global to this source file only (static!)        */
/*                                                                          */
/****************************************************************************/

/* local midpoints */
#ifdef __TWODIM__
static DOUBLE_VECTOR_2D LMP_Triangle            = {0.333333333333333333, 0.333333333333333333};
static DOUBLE_VECTOR_2D LMP_Quadrilateral       = {0.5, 0.5};
#endif
#ifdef __THREEDIM__
static DOUBLE_VECTOR_3D LMP_Tetrahedron         = {0.25, 0.25, 0.25};
static DOUBLE_VECTOR_3D LMP_Pyramid             = {0.5, 0.5, 0.33333333333333333};
static DOUBLE_VECTOR_3D LMP_Prism               = {0.333333333333333333,
                                                   0.333333333333333333,0.5};
static DOUBLE_VECTOR_3D LMP_Hexahedron          = {0.5, 0.5, 0.5};
#endif

/****************************************************************************/
/*                                                                          */
/* forward declarations of functions used before they are defined           */
/*                                                                          */
/****************************************************************************/


/****************************************************************************/
/** \brief Local midpoint

   \param n - number of corners of the element

   This function gives the local coordinates of the midpoint of an element

   \return
   Pointer to the coordinate array
 */
/****************************************************************************/

DOUBLE * NS_DIM_PREFIX LMP (INT n)
{
#ifdef __TWODIM__
  switch (n)
  {
  case 3 : return (LMP_Triangle);
  case 4 : return (LMP_Quadrilateral);
  }
#endif

#ifdef __THREEDIM__
  switch (n)
  {
  case 4 : return (LMP_Tetrahedron);
  case 5 : return (LMP_Pyramid);
  case 6 : return (LMP_Prism);
  case 8 : return (LMP_Hexahedron);
  }
#endif
  return (NULL);
}

/****************************************************************************/
/** \brief Transform global coordinates to local

   \param n - number of corners
   \param Corners - coordinates of corners
   \param EvalPoint - global coordinates
   \param LocalCoord - local coordinates

   This function transforms global coordinates to local in an evaluated point
   in 3D.

   \return <ul>
   <li>   0 if ok </li>
   <li>   1 if error occured. </li>
   </ul>
 */
/****************************************************************************/

INT NS_DIM_PREFIX UG_GlobalToLocal (INT n, const DOUBLE **Corners,
                                    const DOUBLE *EvalPoint, DOUBLE *LocalCoord)
{
  DOUBLE_VECTOR tmp,diff,M[DIM],IM[DIM];
  DOUBLE s,IMdet;
  INT i;

  V_DIM_SUBTRACT(EvalPoint,Corners[0],diff);
  if (n == DIM+1)
  {
    TRANSFORMATION(DIM+1,Corners,LocalCoord,M);
    M_DIM_INVERT(M,IM,IMdet);
    if (IMdet==0) return (2);
    MT_TIMES_V_DIM(IM,diff,LocalCoord);
    return(0);
  }
  V_DIM_CLEAR(LocalCoord);
  TRANSFORMATION(n,Corners,LocalCoord,M);
  M_DIM_INVERT(M,IM,IMdet);
  if (IMdet==0) return (3);
  MT_TIMES_V_DIM(IM,diff,LocalCoord);
  for (i=0; i<MAX_ITER; i++)
  {
    LOCAL_TO_GLOBAL (n,Corners,LocalCoord,tmp);
    V_DIM_SUBTRACT(tmp,EvalPoint,diff);
    V_DIM_EUKLIDNORM(diff,s);
    PRINTDEBUG(gm,1,("UG_GlobalToLocal %d %g\n",i,s));
    if (s * s <= SMALL_DIFF * IMdet)
      return (0);
    TRANSFORMATION(n,Corners,LocalCoord,M);
    M_DIM_INVERT(M,IM,IMdet);
    if (IMdet==0) return (4);
    MT_TIMES_V_DIM(IM,diff,tmp);
    V_DIM_SUBTRACT(LocalCoord,tmp,LocalCoord);
  }

  return(1);
}

/****************************************************************************/
/** \brief Calculate inner normals of tetrahedra

   \param theCorners - list of pointers to phys corner vectors
   \param theNormals - normals of tetrahedra

   This function calculates the inner normals on the sides of a tetrahedron.

   \return <ul>
   <li>   0 if ok </li>
   <li>   1 if error occured. </li>
   </ul>
 */
/****************************************************************************/

#ifdef __THREEDIM__
INT NS_DIM_PREFIX TetraSideNormals (ELEMENT *theElement, DOUBLE **theCorners, DOUBLE_VECTOR theNormals[MAX_SIDES_OF_ELEM])
{
  ELEMENT e;
  DOUBLE_VECTOR a, b;
  DOUBLE h;
  INT j,k;

  /* TODO: changed MAX_CORNERS_OF_ELEM to 4 and subsequently*/
  SETTAG(&e,4);
  for (j=0; j<4; j++)
  {
    k = SIDE_OPP_TO_CORNER(&e,j);
    V3_SUBTRACT(theCorners[(j+1)%4],theCorners[(j+2)%4],a)
    V3_SUBTRACT(theCorners[(j+1)%4],theCorners[(j+3)%4],b)
    V3_VECTOR_PRODUCT(a,b,theNormals[k])
    V3_Normalize(theNormals[k]);
    V3_SUBTRACT(theCorners[j],theCorners[(j+1)%4],a)
    V3_SCALAR_PRODUCT(theNormals[k],a,h);
    if (ABS(h)<SMALL_C) return (1);
    if (h<0.0)
      V3_SCALE(-1.0,theNormals[k]);
  }

  return (0);

}
#endif

/****************************************************************************/
/** \brief Calculate maximal side angle of Tetrahedron

   \param theCorners - list of pointers to phys corner vectors
   \param MaxAngle - max side angle

   This function calculates the maximal side angle of the tetrahedron.

   \return <ul>
   <li>   0 if ok </li>
   <li>   1 if error occured. </li>
   </ul>
 */
/****************************************************************************/

#ifdef __THREEDIM__
INT NS_DIM_PREFIX TetMaxSideAngle (ELEMENT *theElement, const DOUBLE **theCorners, DOUBLE *MaxAngle)
{
  DOUBLE_VECTOR theNormal[MAX_SIDES_OF_ELEM];
  DOUBLE max,help;
  INT i;

  if (TetraSideNormals (theElement,(DOUBLE **)theCorners,theNormal)) return (1);
  max = -1.0;
  for (i=0; i<EDGES_OF_ELEM(theElement); i++)
  {
    V3_SCALAR_PRODUCT(theNormal[SIDE_WITH_EDGE(theElement,i,0)],theNormal[SIDE_WITH_EDGE(theElement,i,1)],help)
    max = MAX(help,max);
  }
  max = MIN(max,1.0);
  *MaxAngle = 180.0/PI*acos(-max);

  return (0);
}
#endif

/****************************************************************************/
/** \brief Calculates side angle and length of edge of Tetrahedron

   \param theCorners - list of pointers to phys corner vectors
   \param Angle - side angle
   \param Length - sidelength

   This function calculates the side angle of a tetrahedron and the lengths of
   the edges belonging to this side.

   \return <ul>
   <li>   0 if ok </li>
   <li>   1 if error occured. </li>
   </ul>
 */
/****************************************************************************/

#ifdef __THREEDIM__
INT NS_DIM_PREFIX TetAngleAndLength (ELEMENT *theElement, const DOUBLE **theCorners, DOUBLE *Angle, DOUBLE *Length)
{
  DOUBLE_VECTOR theNormals[MAX_SIDES_OF_ELEM],theEdge[MAX_EDGES_OF_ELEM];
  DOUBLE h;
  INT j,k;

  for (j=0; j<EDGES_OF_ELEM(theElement); j++)
  {
    V3_SUBTRACT(theCorners[CORNER_OF_EDGE(theElement,j,1)],theCorners[CORNER_OF_EDGE(theElement,j,0)],theEdge[j])
    V3_EUKLIDNORM(theEdge[j],Length[j])
  }
  for (j=0; j<SIDES_OF_ELEM(theElement); j++)
  {
    V3_VECTOR_PRODUCT(theEdge[EDGE_OF_SIDE(theElement,j,0)],theEdge[EDGE_OF_SIDE(theElement,j,1)],theNormals[j])
    V3_Normalize(theNormals[j]);
    k = EDGE_OF_CORNER(theElement,CORNER_OPP_TO_SIDE(theElement,j),0);
    V3_SCALAR_PRODUCT(theNormals[j],theEdge[k],h)
    if (ABS(h)<SMALL_C) return (1);
    if ( (h<0.0 && CORNER_OF_EDGE(theElement,k,1)==CORNER_OPP_TO_SIDE(theElement,j)) ||
         (h>0.0 && CORNER_OF_EDGE(theElement,k,0)==CORNER_OPP_TO_SIDE(theElement,j))     )
      V3_SCALE(-1.0,theNormals[j]);
  }
  for (j=0; j<EDGES_OF_ELEM(theElement); j++)
  {
    V3_SCALAR_PRODUCT(theNormals[SIDE_WITH_EDGE(theElement,j,0)],theNormals[SIDE_WITH_EDGE(theElement,j,1)],Angle[j])
    Angle[j] = MAX(Angle[j],-1.0);
    Angle[j] = MIN(Angle[j], 1.0);
    Angle[j] = (DOUBLE)acos((double)Angle[j]);
  }

  return (0);
}
#endif
