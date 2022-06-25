set(SOURCES  std_domain.cc std_parallel.cc) # std_domain.h std_internal.h)
ug_add_dim_libs(domS OBJECT SOURCES ${SOURCES})
install(FILES std_domain.h DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
