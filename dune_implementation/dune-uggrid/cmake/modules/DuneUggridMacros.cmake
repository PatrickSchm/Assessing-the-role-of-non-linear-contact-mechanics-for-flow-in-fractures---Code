# Compatibility against previous UG versions.
set(UG_FOUND True)
set(HAVE_UG True)
set(UG_VERSION "${DUNE_UGGRID_VERSION}")
# The dune module is alway 3.13.0 or above!
add_definitions(-DUG_USE_NEW_DIMENSION_DEFINES)

if(UG_PARALLEL STREQUAL "yes")
  # Actually we probably should activate UG
  # for everything. But for the time being we fall
  # back to the enable trick. To change this just
  # uncomment the lines below.
  #add_definitions("-DENABLE_UG=1")
  #add_definitions("-DModelP")
  set(UG_DEFINITIONS "ENABLE_UG=1;ModelP")
else()
  # Actually we probably should activate UG
  # for everything. But for the time being we fall
  # back to the enable trick. To change this just
  # uncomment the lines below.
  #add_definitions("-DENABLE_UG=1")
  set(UG_DEFINITIONS "ENABLE_UG=1")
endif()

# Check whether dune-uggrid is installed
# to work around includes not relative to dune-uggrid's root directory
if((NOT dune-uggrid_INSTALLED) AND (NOT PROJECT_NAME STREQUAL dune-uggrid))
  include_directories(${dune-uggrid_PREFIX} ${dune-uggrid_PREFIX}/low
    ${dune-uggrid_PREFIX}/gm ${dune-uggrid_PREFIX}/dom
    ${dune-uggrid_PREFIX}/np ${dune-uggrid_PREFIX}/ui
    ${dune-uggrid_PREFIX}/np/algebra
    ${dune-uggrid_PREFIX}/np/udm
    ${dune-uggrid_PREFIX}/parallel ${dune-uggrid_PREFIX}/parallel/ddd
    ${dune-uggrid_PREFIX}/parallel/ppif
    ${dune-uggrid_PREFIX}/parallel/dddif ${dune-uggrid_PREFIX}/parallel/util
    ${dune-uggrid_PREFIX}/parallel/ddd/include )
endif()
