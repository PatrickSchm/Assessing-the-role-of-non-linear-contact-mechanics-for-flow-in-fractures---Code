# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget dunepdelab)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target dunepdelab
add_library(dunepdelab STATIC IMPORTED)

set_target_properties(dunepdelab PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "ENABLE_EIGEN=1;ENABLE_UG=1;ModelP;ENABLE_SUITESPARSE=1;ENABLE_SUPERLU=1;ENABLE_GMP=1;ENABLE_MPI=1;MPICH_SKIP_MPICXX;MPIPP_H;MPI_NO_CPPBIND"
  INTERFACE_INCLUDE_DIRECTORIES "/usr/local/include/eigen3;/home/paddy/pkg/dune_2d/dune-functions;/home/paddy/pkg/dune_2d/dune-localfunctions;/home/paddy/pkg/dune_2d/dune-grid;/home/paddy/pkg/dune_2d/dune-typetree;/home/paddy/pkg/dune_2d/dune-istl;/usr/include/suitesparse;/usr/include/superlu;/home/paddy/pkg/dune_2d/dune-geometry;/home/paddy/pkg/dune_2d/dune-uggrid;/home/paddy/pkg/dune_2d/dune-common;/usr/include;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/opal/mca/event/libevent2022/libevent;/usr/lib/x86_64-linux-gnu/openmpi/include/openmpi/opal/mca/event/libevent2022/libevent/include;/usr/lib/x86_64-linux-gnu/openmpi/include"
  INTERFACE_LINK_LIBRARIES "dunegrid;dunegeometry;ugS3;ugS2;ugL;dunecommon;dunegrid;dunegeometry;ugS3;ugS2;ugL;dunecommon;/usr/lib/x86_64-linux-gnu/libldl.so;/usr/lib/x86_64-linux-gnu/libspqr.so;/usr/lib/x86_64-linux-gnu/libumfpack.so;/usr/lib/x86_64-linux-gnu/libcholmod.so;/usr/lib/x86_64-linux-gnu/libamd.so;/usr/lib/x86_64-linux-gnu/libcamd.so;/usr/lib/x86_64-linux-gnu/libcolamd.so;/usr/lib/x86_64-linux-gnu/libccolamd.so;/usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so;/usr/lib/x86_64-linux-gnu/libsuperlu.so;/opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_intel_lp64.so;/opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_gnu_thread.so;/opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64/libmkl_core.so;/usr/lib/x86_64-linux-gnu/libgomp.so;/usr/lib/x86_64-linux-gnu/libgmp.so;/usr/lib/x86_64-linux-gnu/libgmpxx.so;/usr/lib/x86_64-linux-gnu/liblapack.so;/usr/lib/x86_64-linux-gnu/libf77blas.so;/usr/lib/x86_64-linux-gnu/libatlas.so;-pthread;/usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so"
)

if(CMAKE_VERSION VERSION_LESS 2.8.12)
  message(FATAL_ERROR "This file relies on consumers using CMake 2.8.12 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/dune-pdelab-targets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
