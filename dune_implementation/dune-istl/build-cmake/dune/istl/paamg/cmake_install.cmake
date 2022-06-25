# Install script for directory: /home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/istl/paamg" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/aggregates.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/amg.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/combinedfunctor.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/construction.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/dependency.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/fastamg.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/fastamgsmoother.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/galerkin.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/globalaggregates.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/graph.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/graphcreator.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/hierarchy.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/indicescoarsener.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/kamg.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/parameters.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/pinfo.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/properties.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/renumberer.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/smoother.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/transfer.hh"
    "/home/paddy/pkg/dune_2d/dune-istl/dune/istl/paamg/twolevelmethod.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-istl/build-cmake/dune/istl/paamg/test/cmake_install.cmake")

endif()

