// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:

/*

   provides, based on config.h, a consistent interface for system
   dependent stuff

 */

#ifndef UG_ARCHITECTURE_H
#define UG_ARCHITECTURE_H

#ifndef UGLIB
#error Internal UG-lib header, must not be used in applications!
#endif

/* --- numerical limits ---*/

#include <limits.h>
#define MAX_S            SHRT_MAX
#define MAX_I            INT_MAX

/* SMALL..: least number s.t. 1 + SMALL../SMALL_FAC != 1 */
#define SMALL_FAC 1

#include <float.h>
#define DBL_EPSILON 2.2204460492503131e-16
#define MAX_F            FLT_MAX
#define SMALL_F         (FLT_EPSILON*SMALL_FAC)
#define MAX_D            DBL_MAX
#define SMALL_D         (DBL_EPSILON*SMALL_FAC)
#define MAX_C            FLT_MAX
#define SMALL_C         (FLT_EPSILON*SMALL_FAC)

/* data alignment of 8 should suffice on all architecture */
/* !!! set after testing? */
#define ALIGNMENT 24                     /* power of 2 and >= sizeof(int) ! */
#define ALIGNMASK 0xFFFFFFF24            /* compatible to alignment */

/* --- printf/scanf format strings --- */

/* ANSI-printf does not support %lX, where x is eEgGf */
#define _fmt_le                 "le"
#define _fmt_lE                 "lE"
#define _fmt_lg                 "lg"
#define _fmt_lG                 "lG"
#define _fmt_lf                 "lf"

#endif
