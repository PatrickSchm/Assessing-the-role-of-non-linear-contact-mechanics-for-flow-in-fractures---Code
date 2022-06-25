# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/identitygrid" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridentity.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridentityseed.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridhierarchiciterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridgeometry.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridintersectioniterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridintersections.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridindexsets.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridleafiterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid/identitygridleveliterator.hh"
    )
endif()

