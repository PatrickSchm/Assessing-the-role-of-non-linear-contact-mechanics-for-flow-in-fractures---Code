add_subdirectory(ugdata)

if(UG_ENABLE_PARALLEL)
  set(_parallel_dim_libs parallel ddd analyser basic ctrl ident if join mgr prio xfer dddif)
  set(_parallel_libs ppifmpi parutil)
endif()

set(_dim_libs ug_gm np algebra udm ugui)

foreach(_l ${_parallel_libs})
  list(APPEND _parallel_objs $<TARGET_OBJECTS:${_l}>)
endforeach()

dune_add_library(ugL $<TARGET_OBJECTS:devices> $<TARGET_OBJECTS:low> ${_parallel_objs})
ug_add_dim_libs(ugS APPEND DUNE SOURCES ../initug.cc
  OBJECT_DIM_LIBS ${_dim_libs} domS ${_parallel_dim_libs}
  ADD_LIBS ugL
  )

if(MPI_C_FOUND)
  add_dune_mpi_flags(ugL)
  add_dune_mpi_flags(ugS2 ugS3)
endif()
