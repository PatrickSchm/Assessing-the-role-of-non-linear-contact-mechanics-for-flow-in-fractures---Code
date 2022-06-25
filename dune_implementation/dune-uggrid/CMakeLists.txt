# set up project
project("dune-uggrid" C CXX)

#circumvent not building docs
set(BUILD_DOCS 1)

# general stuff
cmake_minimum_required(VERSION 2.8.12)

# Guess the dune-common build directory if it is not yet set
if(NOT (dune-common_DIR OR dune-common_ROOT OR
      "${CMAKE_PREFIX_PATH}" MATCHES ".*dune-common.*"))
  string(REPLACE  ${CMAKE_PROJECT_NAME} dune-common dune-common_DIR
    ${PROJECT_BINARY_DIR})
endif()

#find dune-common and set the module path
find_package(dune-common REQUIRED)
list(APPEND CMAKE_MODULE_PATH ${dune-common_MODULE_PATH}
     "${CMAKE_SOURCE_DIR}/cmake/modules")# make sure our own modules are found

#include the dune macros
include(DuneMacros)

# start a dune project with information from dune.module
dune_project()

find_package(MPI)
# set defines that are only used internally.
# The rest is in cmake/modules/DuneUggrid.cmake
if(MPI_C_FOUND)
  set(UG_ENABLE_PARALLEL True CACHE BOOL "Enable a parallel UG (default is True if MPI is there false otherwise")
else()
  set(UG_ENABLE_PARALLEL False CACHE BOOL "Enable a parallel UG (default is True if MPI is there false otherwise")
endif()

set(UG_ENABLE_DEBUGGING False CACHE BOOL "Enable UG debugging (default is Off)")
set(UG_ENABLE_2D True CACHE BOOL "Build library for 2d (default is On)")
set(UG_ENABLE_3D True CACHE BOOL "Build library for 3d (default is On)")
set(UG_ENABLE_SYSTEM_HEAP ON CACHE BOOL "If ON/True then we are using the operating system heap instead of the one internal to UG (Default: ON")
set(UG_DDD_MAX_MACROBITS "24" CACHE STRING
  "Set number of bits of an unsigned int used to store the process number,
       the remaining bits are used to store the local entity id")
if(UG_ENABLE_SYSTEM_HEAP)
  add_definitions("-DUG_USE_SYSTEM_HEAP=1")
  set(UG_EXTRAFLAGS "-DUG_USE_SYSTEM_HEAP=1")
endif()
if(UG_ENABLE_DEBUGGING)
  add_definitions("-DDebug")
  set(UG_EXTRAFLAGS "${UG_EXTRAFLAGS} -DDebug")
endif()

add_definitions(-DUGLIB)
set(UG_EXTRAFLAGS "${UG_EXTRAFLAGS} -DUGLIB")

#Always build parallel libs if MPI is found
if(UG_ENABLE_PARALLEL)
  if(NOT MPI_C_FOUND)
    message(SEND_ERROR "A parallel UG was requested but MPI was not found. Either change variable UG_ENABLE_PARALLEL or install MPI." )
  endif()
  add_definitions("-DModelP")
  set(UG_EXTRAFLAGS "${UG_EXTRAFLAGS} -DModelP")
endif()

#set the include headers
include_directories(${PROJECT_SOURCE_DIR} ${PROJECT_SOURCE_DIR}/low
  ${PROJECT_SOURCE_DIR}/gm ${PROJECT_SOURCE_DIR}/dom
  ${PROJECT_SOURCE_DIR}/np ${PROJECT_SOURCE_DIR}/ui
  ${PROJECT_SOURCE_DIR}/np/algebra
  ${PROJECT_SOURCE_DIR}/np/udm
  ${PROJECT_SOURCE_DIR}/parallel ${PROJECT_SOURCE_DIR}/parallel/ddd
  ${PROJECT_SOURCE_DIR}/parallel/ppif
  ${PROJECT_SOURCE_DIR}/parallel/dddif ${PROJECT_SOURCE_DIR}/parallel/util
  ${PROJECT_SOURCE_DIR}/parallel/ddd/include )


set(UG_ENABLED_DIMENSIONS)
if(UG_ENABLE_2D)
  list(APPEND UG_ENABLED_DIMENSIONS "2")
endif()

if(UG_ENABLE_3D)
  list(APPEND UG_ENABLED_DIMENSIONS "3")
endif()

macro(ug_expand_object_libs var dim)
  set(${var})
  foreach(_lib ${ARGN})
    set(${var} ${${var}} "\$<TARGET_OBJECTS:${_lib}${dim}>")
  endforeach()
endmacro()

# a macro that creates the libraries for all dimensions.
#
macro(ug_add_dim_libs LIB_NAME)
  cmake_parse_arguments(ADD_LIB  "OBJECT;DUNE" ""
    "SOURCES;SOURCES_2D;SOURCES_3D;OBJECT_LIBS;OBJECT_DIM_LIBS;ADD_LIBS" ${ARGN})
  if(ADD_LIB_APPEND)
    set(_append "APPEND") # append all libraries in export.
  endif()
  if(ADD_LIB_OBJECT)
    set(OBJECT "OBJECT")
  endif()

  ug_expand_object_libs(OBJECT_LIBS "" ${ADD_LIB_OBJECT_LIBS})
  foreach(dim  ${UG_ENABLED_DIMENSIONS})
    ug_expand_object_libs(OBJECT_DIM_LIBS ${dim} ${ADD_LIB_OBJECT_DIM_LIBS})

    if(ADD_LIB_DUNE)
      if(ADD_LIB_ADD_LIBS)
        set(_EXTRA_ARGS "ADD_LIBS" ${ADD_LIB_ADD_LIBS})
      endif()
      if(OBJECT)
        message(FATAL_ERROR "OBJECT may only be used in conjuction with DUNE property")
      endif()
      dune_add_library("${LIB_NAME}${dim}" ${OBJECT} ${ADD_LIB_SOURCES}
        ${ADD_LIB_SOURCES_${dim}D}
        ${ADD_LIB_UNPARSED_ARGUMENTS} ${OBJECT_DIM_LIBS} ${OBJECT_LIBS}
        ${_EXTRA_ARGS} ${_append})
      set(_libs "${LIB_NAME}${dim}")
      if(DUNE_BUILD_BOTH_LIBS)
        set(_libs ${_libs} "${LIB_NAME}${dim}-shared")
      endif()
    else()
      add_library("${LIB_NAME}${dim}" ${OBJECT} ${ADD_LIB_SOURCES}
        ${ADD_LIB_SOURCES_${dim}D}
        ${ADD_LIB_UNPARSED_ARGUMENTS} ${OBJECT_DIM_LIBS} ${OBJECT_LIBS})
      if(OBJECT AND DUNE_BUILD_BOTH_LIBS)
        set_property(TARGET "${LIB_NAME}${dim}" PROPERTY POSITION_INDEPENDENT_CODE TRUE)
      endif()
      if(ADD_LIB_ADD_LIBS)
        dune_target_link_libraries(${LIB_NAME}${dim} ${ADD_LIB_ADD_LIBS})
      endif()
      set(_libs "${LIB_NAME}${dim}")
    endif()
    foreach(_lib ${_libs})
      target_compile_definitions("${_lib}" PRIVATE "-DUG_DIM_${dim}")
    endforeach()
    set(_append "APPEND") # Do not overwrite but append next lib in export
  endforeach()
endmacro()
# !!! maybe make this configurable later
set(DYNAMIC_MEMORY_ALLOCMODEL True)

check_include_file(sys/time.h HAVE_SYS_TIME_H)
check_include_file(time.h HAVE_TIME_H)

if(HAVE_TIME_H AND HAVE_SYS_TIME_H)
  set(TIME_WITH_SYS_TIME True)
endif()

# do everything in the subdirs (order matters because of library dependencies!)
if(UG_ENABLE_PARALLEL)
  set(SUBDIRS  parallel)
else()
  set(SUBDIRS "")
endif()
set(SUBDIRS  ${SUBDIRS} low dev gm dom np ui lib)
set(CMAKE_INSTALL_PKGINCLUDEDIR "${CMAKE_INSTALL_INCLUDEDIR}/ug")

# create and install pkg-config information and
# cmake package configuration as ug not dune-uggrid
set(prefix ${CMAKE_INSTALL_PREFIX})
set(exec_prefix "\${prefix}")
set(libdir "\${exec_prefix}/${CMAKE_INSTALL_LIBDIR}")
set(includedir "\${prefix}/${CMAKE_INSTALL_INCLUDEDIR}")
if(UG_ENABLE_PARALLEL)
  set(parallel "yes")
else()
  set(parallel "no")
endif()
set(VERSION ${DUNE_UGGRID_VERSION})
configure_file(libug.pc.in libug.pc)
configure_file(ug-config.cmake.in ug-config.cmake @ONLY)
configure_file(ug-config-version.cmake.in ug-config-version.cmake @ONLY)

#install header
install(FILES initug.h DESTINATION ${CMAKE_INSTALL_PKGINCLUDEDIR})
foreach(i ${SUBDIRS})
  add_subdirectory(${i})
endforeach(i ${SUBDIRS})

add_subdirectory(cmake/modules)
# set variable names for config.h
set(DDD_MAX_PROCBITS_IN_GID ${UG_DDD_MACROBITS})
# finalize the dune project, e.g., generate config.h etc.
# Use package init to set additional information
set(dune-uggrid_INIT "set(UG_PARALLEL ${parallel})
set(UG_FOR_DUNE yes)")

finalize_dune_project(GENERATE_CONFIG_H_CMAKE)

# This comes after finalize as it uses DUNE_INSTALL_LIBDIR
# computed there.
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/libug.pc
  DESTINATION ${DUNE_INSTALL_LIBDIR}/pkgconfig)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/ug-config.cmake
  ${CMAKE_CURRENT_BINARY_DIR}/ug-config-version.cmake
  DESTINATION ${DUNE_INSTALL_LIBDIR}/cmake/ug)
