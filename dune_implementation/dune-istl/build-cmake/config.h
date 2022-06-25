/* config.h.  Generated from config_collected.h.cmake by CMake.
   It was generated from config_collected.h.cmake which in turn is generated automatically
   from the config.h.cmake files of modules this module depends on. */

/* Define to 1 if you have module dune-istl available */
#define HAVE_DUNE_ISTL 1


/* Define to 1 if you have module dune-common available */
#define HAVE_DUNE_COMMON 1


/* Define to the version of dune-common */
#define DUNE_COMMON_VERSION "2.7-git"

/* Define to the major version of dune-common */
#define DUNE_COMMON_VERSION_MAJOR 2

/* Define to the minor version of dune-common */
#define DUNE_COMMON_VERSION_MINOR 7

/* Define to the revision of dune-common */
#define DUNE_COMMON_VERSION_REVISION 0

/* Standard debug streams with a level below will collapse to doing nothing */
#define DUNE_MINIMAL_DEBUG_LEVEL 4

/* does the compiler support __attribute__((deprecated))? */
#define HAS_ATTRIBUTE_DEPRECATED 1

/* does the compiler support __attribute__((deprecated("message"))? */
#define HAS_ATTRIBUTE_DEPRECATED_MSG 1

/* does the compiler support __attribute__((unused))? */
#define HAS_ATTRIBUTE_UNUSED 1

/* does the compiler support C++17's class template argument deduction? */
#define DUNE_HAVE_CXX_CLASS_TEMPLATE_ARGUMENT_DEDUCTION 1

/* does the compiler support C++17's optional? */
#define DUNE_HAVE_CXX_OPTIONAL 1

/* does the compiler support conditionally throwing exceptions in constexpr context? */
#define DUNE_SUPPORTS_CXX_THROW_IN_CONSTEXPR 1

/* does the standard library provide <experimental/type_traits> ? */
#define DUNE_HAVE_HEADER_EXPERIMENTAL_TYPE_TRAITS 1

/* does the standard library provide make_unique() ? */
#define DUNE_HAVE_CXX_MAKE_UNIQUE 1

/* does the standard library provide bool_constant ? */
#define DUNE_HAVE_CXX_BOOL_CONSTANT 1

/* does the standard library provide experimental::bool_constant ? */
/* #undef DUNE_HAVE_CXX_EXPERIMENTAL_BOOL_CONSTANT */

/* does the standard library provide apply() ? */
#define DUNE_HAVE_CXX_APPLY 1

/* does the standard library provide experimental::apply() ? */
/* #undef DUNE_HAVE_CXX_EXPERIMENTAL_APPLY */

/* does the standard library provide experimental::make_array() ? */
#define DUNE_HAVE_CXX_EXPERIMENTAL_MAKE_ARRAY 1

/* does the standard library provide experimental::is_detected ? */
#define DUNE_HAVE_CXX_EXPERIMENTAL_IS_DETECTED 1

/* Define if you have a BLAS library. */
#define HAVE_BLAS 1

/* does the compiler support abi::__cxa_demangle */
#define HAVE_CXA_DEMANGLE 1

/* Define if you have LAPACK library. */
#define HAVE_LAPACK 1

/* Define to 1 if you have the <malloc.h> header file. */
// Not used! #define HAVE_MALLOC_H 0

/* Define if you have the MPI library.  */
#define HAVE_MPI ENABLE_MPI

/* Define if you have the GNU GMP library. The value should be ENABLE_GMP
   to facilitate activating and deactivating GMP using compile flags. */
#define HAVE_GMP ENABLE_GMP

/* Define if you have the Vc library. The value should be ENABLE_VC
   to facilitate activating and deactivating Vc using compile flags. */
/* #undef HAVE_VC */

/* Define to 1 if you have the symbol mprotect. */
#define HAVE_MPROTECT 1

/* Define to 1 if you have the <stdint.h> header file. */
/* #undef HAVE_STDINT_H */

/* Define to 1 if you have <sys/mman.h>. */
#define HAVE_SYS_MMAN_H 1

/* Define to 1 if you have the Threading Building Blocks (TBB) library */
/* #undef HAVE_TBB */



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
#define HAVE_IS_INDEXABLE_SUPPORT 1

/* Define to ENABLE_UMFPACK if the UMFPack library is available */
#define HAVE_UMFPACK ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse library is available */
#define HAVE_SUITESPARSE ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's AMD library is available */
#define HAVE_SUITESPARSE_AMD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's BTF library is available */
/* #undef HAVE_SUITESPARSE_BTF */

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's CAMD library is available */
#define HAVE_SUITESPARSE_CAMD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's CCOLAMD library is available */
#define HAVE_SUITESPARSE_CCOLAMD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's CHOLMOD library is available */
#define HAVE_SUITESPARSE_CHOLMOD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's COLAMD library is available */
#define HAVE_SUITESPARSE_COLAMD ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's CXSPARSE library is available */
/* #undef HAVE_SUITESPARSE_CXSPARSE */

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's KLU library is available */
/* #undef HAVE_SUITESPARSE_KLU */

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's LDL library is available */
#define HAVE_SUITESPARSE_LDL ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's RBIO library is available */
/* #undef HAVE_SUITESPARSE_RBIO */

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's SPQR library is available
   and if it's version is at least 4.3 */
#define HAVE_SUITESPARSE_SPQR ENABLE_SUITESPARSE

/* Define to ENABLE_SUITESPARSE if the SuiteSparse's UMFPACK library is available */
#define HAVE_SUITESPARSE_UMFPACK ENABLE_SUITESPARSE

/* Define to 1 if METIS is available */
/* #undef HAVE_METIS */


/* Define to ENABLE_PARMETIS if you have the Parmetis library.
   This is only true if MPI was found
   by configure _and_ if the application uses the PARMETIS_CPPFLAGS */
/* #undef HAVE_PARMETIS */

/* Define to 1 if PT-Scotch is available */
/* #undef HAVE_PTSCOTCH */

/* Include always useful headers */
#include "FC.h"
#define FC_FUNC FC_GLOBAL_



/* begin dune-istl
   put the definitions for config.h specific to
   your project here. Everything above will be
   overwritten
*/

/* begin private */
/* Name of package */
#define PACKAGE "dune-istl"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT "dune-devel@lists.dune-project.org"

/* Define to the full name of this package. */
#define PACKAGE_NAME "dune-istl"

/* Define to the full name and version of this package. */
#define PACKAGE_STRING "dune-istl 2.5.1"

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME "dune-istl"

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION "2.5.1"

/* end private */

/* Define to ENABLE_SUPERLU if the SuperLU library is available */
#define HAVE_SUPERLU ENABLE_SUPERLU

/* Define to ENABLE_ARPACKPP if the ARPACK++ library is available */
/* #undef HAVE_ARPACKPP */

/* Define to 0 as all versions since SuperLu 4.0 do no longer provide it that way. */
#define HAVE_MEM_USAGE_T_EXPANSIONS 1

/* define to 1 if SuperLU header slu_ddefs.h contains SLU_DOUBLE */
#define SUPERLU_MIN_VERSION_4_3 1

/* define to 1 if SuperLU dgssvx takes a GlobalLU_t parameter */
#define SUPERLU_MIN_VERSION_5 1

/* Define to the version of dune-istl */
#define DUNE_ISTL_VERSION "2.5.1"

/* Define to the major version of dune-istl */
#define DUNE_ISTL_VERSION_MAJOR 2

/* Define to the minor version of dune-istl */
#define DUNE_ISTL_VERSION_MINOR 5

/* Define to the revision of dune-istl */
#define DUNE_ISTL_VERSION_REVISION 1

/* end dune-istl
   Everything below here will be overwritten
*/
