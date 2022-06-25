set(SOURCES
  disctools.cc
  npscan.cc
  udm.cc
  formats.cc
  numproc.cc
)

set(npinclude_HEADERS  udm.h numproc.h formats.h npscan.h disctools.h)

ug_add_dim_libs(udm OBJECT SOURCES ${SOURCES})

install(FILES ${npinclude_HEADERS} DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
