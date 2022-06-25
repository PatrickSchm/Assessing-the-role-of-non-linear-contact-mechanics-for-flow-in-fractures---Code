# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/test

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/test" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/basicunitcube.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/check-albertareader.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkadaptation.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkcomcorrectness.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkcommunicate.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkentitylifetime.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkentityseed.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkgeometry.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkgeometryinfather.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkgridfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkidset.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkindexset.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkintersectionit.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkintersectionlifetime.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkiterators.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkjacobians.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checkpartition.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/checktwists.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/functions.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/gridcheck.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/test/staticcheck.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/yasp/cmake_install.cmake")

endif()

