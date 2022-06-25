# Install script for directory: /home/paddy/pkg/dune_2d/dune-uggrid/gm

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ug" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/cw.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/elements.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/gm.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/pargm.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/evm.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/shapes.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/ugm.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/dlmgr.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/algebra.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/rm.h"
    "/home/paddy/pkg/dune_2d/dune-uggrid/gm/refine.h"
    )
endif()

