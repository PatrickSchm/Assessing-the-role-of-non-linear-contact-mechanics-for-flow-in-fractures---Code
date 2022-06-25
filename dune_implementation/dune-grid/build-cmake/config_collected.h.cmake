/* config.h.  Generated from config_collected.h.cmake by CMake.
   It was generated from config_collected.h.cmake which in turn is generated automatically
   from the config.h.cmake files of modules this module depends on. */

/* Define to 1 if you have module dune-grid available */
#cmakedefine01 HAVE_DUNE_GRID


/* Define to 1 if you have module dune-common available */
#cmakedefine01 HAVE_DUNE_COMMON


/* Define to 1 if you have module dune-uggrid available */
#cmakedefine01 HAVE_DUNE_UGGRID


/* Define to 1 if you have module dune-geometry available */
#cmakedefine01 HAVE_DUNE_GEOMETRY


/* Define to the version of dune-common */
#define DUNE_COMMON_VERSION "${DUNE_COMMON_VERSION}"

/* Define to the major version of dune-common */
#define DUNE_COMMON_VERSION_MAJOR ${DUNE_COMMON_VERSION_MAJOR}

/* Define to the minor version of dune-common */
#define DUNE_COMMON_VERSION_MINOR ${DUNE_COMMON_VERSION_MINOR}

/* Define to the revision of dune-common */
#define DUNE_COMMON_VERSION_REVISION ${DUNE_COMMON_VERSION_REVISION}

/* Standard debug streams with a level below will collapse to doing nothing */
#define DUNE_MINIMAL_DEBUG_LEVEL ${DUNE_MINIMAL_DEBUG_LEVEL}

/* does the compiler support __attribute__((deprecated))? */
#cmakedefine HAS_ATTRIBUTE_DEPRECATED 1

/* does the compiler support __attribute__((deprecated("message"))? */
#cmakedefine HAS_ATTRIBUTE_DEPRECATED_MSG 1

/* does the compiler support __attribute__((unused))? */
#cmakedefine HAS_ATTRIBUTE_UNUSED 1

/* does the compiler support C++17's class template argument deduction? */
#cmakedefine DUNE_HAVE_CXX_CLASS_TEMPLATE_ARGUMENT_DEDUCTION 1

/* does the compiler support C++17's optional? */
#cmakedefine DUNE_HAVE_CXX_OPTIONAL 1

/* does the compiler support conditionally throwing exceptions in constexpr context? */
#cmakedefine DUNE_SUPPORTS_CXX_THROW_IN_CONSTEXPR 1

/* does the standard library provide <experimental/type_traits> ? */
#cmakedefine DUNE_HAVE_HEADER_EXPERIMENTAL_TYPE_TRAITS 1

/* does the standard library provide make_unique() ? */
#cmakedefine DUNE_HAVE_CXX_MAKE_UNIQUE 1

/* does the standard library provide bool_constant ? */
#cmakedefine DUNE_HAVE_CXX_BOOL_CONSTANT 1

/* does the standard library provide experimental::bool_constant ? */
#cmakedefine DUNE_HAVE_CXX_EXPERIMENTAL_BOOL_CONSTANT 1

/* does the standard library provide apply() ? */
#cmakedefine DUNE_HAVE_CXX_APPLY 1

/* does the standard library provide experimental::apply() ? */
#cmakedefine DUNE_HAVE_CXX_EXPERIMENTAL_APPLY 1

/* does the standard library provide experimental::make_array() ? */
#cmakedefine DUNE_HAVE_CXX_EXPERIMENTAL_MAKE_ARRAY 1

/* does the standard library provide experimental::is_detected ? */
#cmakedefine DUNE_HAVE_CXX_EXPERIMENTAL_IS_DETECTED 1

/* Define if you have a BLAS library. */
#cmakedefine HAVE_BLAS 1

/* does the compiler support abi::__cxa_demangle */
#cmakedefine HAVE_CXA_DEMANGLE 1

/* Define if you have LAPACK library. */
#cmakedefine HAVE_LAPACK 1

/* Define to 1 if you have the <malloc.h> header file. */
// Not used! #cmakedefine01 HAVE_MALLOC_H

/* Define if you have the MPI library.  */
#cmakedefine HAVE_MPI ENABLE_MPI

/* Define if you have the GNU GMP library. The value should be ENABLE_GMP
   to facilitate activating and deactivating GMP using compile flags. */
#cmakedefine HAVE_GMP ENABLE_GMP

/* Define if you have the Vc library. The value should be ENABLE_VC
   to facilitate activating and deactivating Vc using compile flags. */
#cmakedefine HAVE_VC ENABLE_VC

/* Define to 1 if you have the symbol mprotect. */
#cmakedefine HAVE_MPROTECT 1

/* Define to 1 if you have the <stdint.h> header file. */
#cmakedefine HAVE_STDINT_H 1

/* Define to 1 if you have <sys/mman.h>. */
#cmakedefine HAVE_SYS_MMAN_H 1

/* Define to 1 if you have the Threading Building Blocks (TBB) library */
#cmakedefine HAVE_TBB 1



/* old feature support macros which were tested until 2.4, kept around for one more release */
/* As these are now always supported due to the new compiler requirements, they are directly */
/* defined without an explicit test. */
#define HAVE_NULLPTR 1
#define HAVE_CONSTEXPR 1
#define HAVE_RANGE_BASED_FOR 1
#define HAVE_NOEXCEPT_SPECIFIER 1
#define HAVE_STD_DECLVAL 1
#define HAVE_KEYWORD_FINAL 1
#define MPI_2 1

/* Define to 1 if the compiler properly supports testing for operator[] */
#cmakedefine HAVE_IS_INDEXABLE_SUPPORT 1

/* Define to ENABLE_UMFPACK if the UMFPack library is available */
#cmakedefine HAVE_UMFPACK ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse library is available */
#cmakedefine HAVE_SUITESPARSE ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's AMD library is available */
#cmakedefine HAVE_SUITESPARSE_AMD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's BTF library is available */
#cmakedefine HAVE_SUITESPARSE_BTF ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's CAMD library is available */
#cmakedefine HAVE_SUITESPARSE_CAMD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's CCOLAMD library is available */
#cmakedefine HAVE_SUITESPARSE_CCOLAMD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's CHOLMOD library is available */
#cmakedefine HAVE_SUITESPARSE_CHOLMOD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's COLAMD library is available */
#cmakedefine HAVE_SUITESPARSE_COLAMD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's CXSPARSE library is available */
#cmakedefine HAVE_SUITESPARSE_CXSPARSE ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's KLU library is available */
#cmakedefine HAVE_SUITESPARSE_KLU ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's LDL library is available */
#cmakedefine HAVE_SUITESPARSE_LDL ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's RBIO library is available */
#cmakedefine HAVE_SUITESPARSE_RBIO ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's SPQR library is available
   and if it's version is at least 4.3 */
#cmakedefine HAVE_SUITESPARSE_SPQR ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's UMFPACK library is available */
#cmakedefine HAVE_SUITESPARSE_UMFPACK ENABLE_SUITESPARSE

/* Define to 1 if METIS is available */
#cmakedefine HAVE_METIS 1


/* Define to ENABLE_PARMETIS if you have the Parmetis library.
   This is only true if MPI was found
   by configure _and_ if the application uses the PARMETIS_CPPFLAGS */
#cmakedefine HAVE_PARMETIS ENABLE_PARMETIS

/* Define to 1 if PT-Scotch is available */
#cmakedefine HAVE_PTSCOTCH 1

/* Include always useful headers */
#include "FC.h"
#define FC_FUNC FC_GLOBAL_



/* Define to the version of dune-common */
#define DUNE_UGGRID_VERSION "${DUNE_UGGRID_VERSION}"

/* Define to the major version of dune-common */
#define DUNE_UGGRID_VERSION_MAJOR ${DUNE_UGGRID_VERSION_MAJOR}

/* Define to the minor version of dune-common */
#define DUNE_UGGRID_VERSION_MINOR ${DUNE_UGGRID_VERSION_MINOR}

/* Define to the revision of dune-common */
#define DUNE_UGGRID_VERSION_REVISION ${DUNE_UGGRID_VERSION_REVISION}

/* begin private section */

/* UG memory allocation model */
#define DYNAMIC_MEMORY_ALLOCMODEL 1

/* see parallel/ddd/dddi.h */
#cmakedefine DDD_MAX_PROCBITS_IN_GID ${UG_DDD_MAX_MACROBITS}

/* Define to 1 if you can safely include both <sys/time.h> and <time.h>. */
#cmakedefine TIME_WITH_SYS_TIME 1

/* Define to 1 if UGGrid should use the complete set of green refinement rules for tetrahedra */
#cmakedefine TET_RULESET 1

/* end private section */





/* Define to the version of dune-geometry */
#define DUNE_GEOMETRY_VERSION "${DUNE_GEOMETRY_VERSION}"

/* Define to the major version of dune-geometry */
#define DUNE_GEOMETRY_VERSION_MAJOR ${DUNE_GEOMETRY_VERSION_MAJOR}

/* Define to the minor version of dune-geometry */
#define DUNE_GEOMETRY_VERSION_MINOR ${DUNE_GEOMETRY_VERSION_MINOR}

/* Define to the revision of dune-geometry */
#define DUNE_GEOMETRY_VERSION_REVISION ${DUNE_GEOMETRY_VERSION_REVISION}



/* begin dune-grid
   put the definitions for config.h specific to
   your project here. Everything above will be
   overwritten
*/
/* begin private */
/* Name of package */
#define PACKAGE "@DUNE_MOD_NAME@"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "@DUNE_MAINTAINER@"

/* Define to the full name of this package. */
#define PACKAGE_NAME "@DUNE_MOD_NAME@"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "@DUNE_MOD_NAME@ @DUNE_MOD_VERSION@"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "@DUNE_MOD_NAME@"

/* Define to the home page for this package. */
#define PACKAGE_URL "@DUNE_MOD_URL@"

/* Define to the version of this package. */
#define PACKAGE_VERSION "@DUNE_MOD_VERSION@"

/* end private */

/* Define to the version of dune-grid */
#define DUNE_GRID_VERSION "${DUNE_GRID_VERSION}"

/* Define to the major version of dune-grid */
#define DUNE_GRID_VERSION_MAJOR ${DUNE_GRID_VERSION_MAJOR}

/* Define to the minor version of dune-grid */
#define DUNE_GRID_VERSION_MINOR ${DUNE_GRID_VERSION_MINOR}

/* Define to the revision of dune-grid */
#define DUNE_GRID_VERSION_REVISION ${DUNE_GRID_VERSION_REVISION}

/* If this is set, public access to the implementation of facades like Entity, Geometry, etc. is granted. (deprecated) */
#define DUNE_GRID_EXPERIMENTAL_GRID_EXTENSIONS 1

/* Define to 1 if psurface library is found */
#cmakedefine HAVE_PSURFACE 1

/* Define to 1 if AmiraMesh library is found */
#cmakedefine HAVE_AMIRAMESH 1

/* The namespace prefix of the psurface library (deprecated) */
#define PSURFACE_NAMESPACE psurface::

/* Define to 1 if you have at least psurface version 2.0 */
#cmakedefine HAVE_PSURFACE_2_0 1

/* Alberta version found by configure, either 0x200 for 2.0 or 0x300 for 3.0 */
#cmakedefine DUNE_ALBERTA_VERSION @DUNE_ALBERTA_VERSION@

/* This is only true if alberta-library was found by configure _and_ if the
   application uses the ALBERTA_CPPFLAGS */
#cmakedefine HAVE_ALBERTA ENABLE_ALBERTA

/* This is only true if UG was found by configure _and_ if the application
   uses the UG_CPPFLAGS */
#cmakedefine HAVE_UG ENABLE_UG

/* Define to 1 if you have mkstemp function */
#cmakedefine01 HAVE_MKSTEMP

/* begin bottom */

/* Grid type magic for DGF parser */
@GRID_CONFIG_H_BOTTOM@

/* end bottom */

/* end dune-grid */