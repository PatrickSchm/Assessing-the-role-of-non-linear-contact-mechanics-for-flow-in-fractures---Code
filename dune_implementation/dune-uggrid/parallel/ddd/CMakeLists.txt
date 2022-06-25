set(SUBDIRS  analyser basic ctrl ident if join mgr prio xfer)
foreach(i ${SUBDIRS})
  add_subdirectory(${i})
endforeach(i ${SUBDIRS})

if(HAVE_MPI)
  ug_add_dim_libs(ddd OBJECT ddd.cc)# OBJECT_DIM_LIBS analyser basic ctrl
   # ident libif libjoin mgr prio xfer)
endif()

# header files that are not explicitly used but need to be distributed
install(FILES include/ddd.h DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
