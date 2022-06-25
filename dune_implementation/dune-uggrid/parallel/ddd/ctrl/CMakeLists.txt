add_definitions(-DConsMemFromHeap)

if(MPI_C_FOUND)
  ug_add_dim_libs(ctrl OBJECT SOURCES cons.cc debug.cc stat.cc)
endif()

install(FILES stat.h DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
