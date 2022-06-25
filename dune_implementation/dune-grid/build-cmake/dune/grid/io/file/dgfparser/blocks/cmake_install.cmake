# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/io/file/dgfparser/blocks" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/basic.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/boundarydom.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/boundaryseg.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/cube.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/dim.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/general.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/gridparameter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/interval.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/periodicfacetrans.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/projection.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/simplex.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/simplexgeneration.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/blocks/vertex.hh"
    )
endif()

