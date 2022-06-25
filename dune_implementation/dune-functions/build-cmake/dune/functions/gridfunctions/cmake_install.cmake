# Install script for directory: /home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/functions/gridfunctions" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/analyticgridviewfunction.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/discreteglobalbasisfunction.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/gridfunction.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/gridfunction_imp.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/gridviewentityset.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/gridviewfunction.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/gridfunctions/localderivativetraits.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/gridfunctions/test/cmake_install.cmake")

endif()

