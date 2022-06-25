# Install script for directory: /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/pdelab/function" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/localfunction.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/localfunctionhelper.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/oldinterfaceadapter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/tags.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/callableadapter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/const.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/division.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/inverse.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/memberadaptor.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/minus.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/product.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/scalarscaled.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/selectcomponent.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/sqr.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/function/sqrt.hh"
    )
endif()

