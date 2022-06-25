install(FILES commands.h
  DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
ug_add_dim_libs(ugui OBJECT SOURCES commands.cc)
