set(SOURCES  algebra.cc enrol.cc evm.cc mgio.cc
  ugio.cc ugm.cc cw.cc initgm.cc elements.cc
  shapes.cc evalproc.cc rm.cc refine.cc
  dlmgr.cc gmcheck.cc er.cc mgheapmgr.cc)
# put this "template" into distribution-tarball as well
set(EXTRA_DIST  dlmgr.t)
set(gminclude_HEADERS  cw.h elements.h gm.h pargm.h evm.h
  shapes.h ugm.h dlmgr.h algebra.h rm.h refine.h)

ug_add_dim_libs(ug_gm OBJECT SOURCES ${SOURCES})# OBJECT_DIM_LIBS gg)

install(FILES ${gminclude_HEADERS} DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
