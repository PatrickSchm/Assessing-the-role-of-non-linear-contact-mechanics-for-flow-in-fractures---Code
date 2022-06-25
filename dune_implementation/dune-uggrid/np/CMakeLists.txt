set(SOURCES  initnp.cc)# initnumerics.h np.h)

add_subdirectory(algebra)
add_subdirectory(udm)

ug_add_dim_libs(np OBJECT SOURCES ${SOURCES})
#  OBJECT_DIM_LIBS algebra amg field procs udm)

install(FILES np.h DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
