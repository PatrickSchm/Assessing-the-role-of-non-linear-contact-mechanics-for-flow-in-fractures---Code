# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/uggrid" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridentityseed.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridentity.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridgeometry.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridlocalgeometry.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridhieriterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridleveliterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridviews.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/ugincludes.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridintersections.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridintersectioniterators.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridindexsets.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridleafiterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uggridrenumberer.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/ug_undefs.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/uglbgatherscatter.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/ugmessagebuffer.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid/ugwrapper.hh"
    )
endif()

