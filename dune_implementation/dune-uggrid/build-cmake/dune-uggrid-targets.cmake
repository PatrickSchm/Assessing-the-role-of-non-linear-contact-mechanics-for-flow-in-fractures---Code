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
foreach(_expectedTarget ugL ugS2 ugS3)
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


# Create imported target ugL
add_library(ugL STATIC IMPORTED)

set_target_properties(ugL PROPERTIES
  INTERFACE_LINK_LIBRARIES "-pthread;/usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so"
)

# Create imported target ugS2
add_library(ugS2 STATIC IMPORTED)

set_target_properties(ugS2 PROPERTIES
  INTERFACE_LINK_LIBRARIES "ugL;-pthread;/usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so"
)

# Create imported target ugS3
add_library(ugS3 STATIC IMPORTED)

set_target_properties(ugS3 PROPERTIES
  INTERFACE_LINK_LIBRARIES "ugL;-pthread;/usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so"
)

# Import target "ugL" for configuration ""
set_property(TARGET ugL APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ugL PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugL.a"
  )

# Import target "ugS2" for configuration ""
set_property(TARGET ugS2 APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ugS2 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS2.a"
  )

# Import target "ugS3" for configuration ""
set_property(TARGET ugS3 APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(ugS3 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/libugS3.a"
  )

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
