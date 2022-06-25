/* begin dune-uggrid */
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

/* end dune-uggrid */
