set(SOURCES  ifcreate.cc ifuse.cc ifcmds.cc ifcheck.cc ifobjsc.cc)

if(MPI_C_FOUND)
  ug_add_dim_libs(if OBJECT SOURCES ${SOURCES})
endif()
install(FILES if.h DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
