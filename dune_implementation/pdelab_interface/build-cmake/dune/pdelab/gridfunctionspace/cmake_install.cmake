# Install script for directory: /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/pdelab/gridfunctionspace" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/compositegridfunctionspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/dunefunctionsgridfunctionspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/dunefunctionslfsindexcache.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/dunefunctionslocalfunctionspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/datahandleprovider.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/entityindexcache.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/genericdatahandle.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/gridfunctionadapter.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/gridfunctionspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/gridfunctionspacebase.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/gridfunctionspaceutilities.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/interpolate.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/lfsindexcache.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/loadbalance.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/localfunctionspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/localfunctionspacetags.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/localvector.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/powercompositegridfunctionspacebase.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/powergridfunctionspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/subspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/subspacelocalfunctionspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/tags.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/vectorgridfunctionspace.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/gridfunctionspace/vtk.hh"
    )
endif()

