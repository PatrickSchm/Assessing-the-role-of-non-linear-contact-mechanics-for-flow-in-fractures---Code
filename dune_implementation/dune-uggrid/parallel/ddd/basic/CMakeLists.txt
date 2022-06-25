add_subdirectory(test)

set(SOURCES  io.cc lowcomm.cc notify.cc reduct.cc topo.cc)

if(MPI_C_FOUND)
  ug_add_dim_libs(basic OBJECT SOURCES ${SOURCES})
endif()

install(FILES notify.h lowcomm.h oopp.h ooppcc.h memutil.h
  DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
