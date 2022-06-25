set(SOURCES  pcmds.cc)

if(MPI_C_FOUND)
  ug_add_dim_libs(prio OBJECT SOURCES ${SOURCES})
endif()
