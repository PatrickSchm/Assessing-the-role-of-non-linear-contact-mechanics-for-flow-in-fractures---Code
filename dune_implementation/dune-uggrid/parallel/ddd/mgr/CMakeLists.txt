set(SOURCES  typemgr.cc objmgr.cc cplmgr.cc prio.cc attr.cc)

if(MPI_C_FOUND)
  ug_add_dim_libs(mgr OBJECT SOURCES ${SOURCES})
endif()
