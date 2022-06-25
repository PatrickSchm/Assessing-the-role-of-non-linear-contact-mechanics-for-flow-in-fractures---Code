set(SOURCES  initddd.cc memmgr.cc handler.cc lb.cc debugger.cc lbrcb.cc
  gridcons.cc support.cc identify.cc identify.h trans.cc priority.cc
  pgmcheck.cc overlap.cc partition.cc)

install(FILES parallel.h DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})

if(MPI_C_FOUND)
  include_directories(${PROJECT_SOURCE_DIR}/parallel/ddd/include)
  ug_add_dim_libs(dddif OBJECT SOURCES ${SOURCES})
endif()
