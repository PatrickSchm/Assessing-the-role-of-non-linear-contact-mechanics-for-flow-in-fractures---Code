set(SOURCES
  ugblas.cc
  ugiter.cc
  sm.cc
)

set(npinclude_HEADERS
  sm.h)

ug_add_dim_libs(algebra OBJECT SOURCES ${SOURCES})

install(FILES ${npinclude_HEADERS} DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
