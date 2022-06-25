# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/yaspgrid" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/backuprestore.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/coordinates.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/partitioning.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/structuredyaspgridfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/torus.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridentity.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridentityseed.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridgeometry.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridhierarchiciterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridindexsets.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridintersection.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridintersectioniterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgrididset.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridleveliterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/yaspgridpersistentcontainer.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid/ygrid.hh"
    )
endif()

