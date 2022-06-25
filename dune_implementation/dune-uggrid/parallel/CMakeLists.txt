if(MPI_C_FOUND)
  # we need to deactivate the MPI C++ bindings
  # Maybe dune-common should export them?
  add_definitions(-DENABLE_MPI=1 -DMPICH_SKIP_MPICXX -DMPIPP_H)
  include_directories("${MPI_DUNE_INCLUDE_PATH}")
  set_property(DIRECTORY APPEND PROPERTY COMPILE_OPTIONS "${MPI_DUNE_COMPILE_FLAGS}")
 ug_add_dim_libs(parallel OBJECT initparallel.cc) # OBJECT_DIM_LIBS ddd dddif)
endif()

add_subdirectory(dddif)
add_subdirectory(ddd)
add_subdirectory(util)
add_subdirectory(ppif)
