# Install script for directory: /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/pdelab/ordering" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/chunkedblockordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/decorator.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/directleaflocalordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/entityblockedlocalordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/gridviewordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/interleavedordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/leafgridviewordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/leaflocalordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/leaforderingbase.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/lexicographicordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/localorderingbase.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/orderingbase.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/permutedordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/singlecodimleafordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/subordering.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/transformations.hh"
    "/home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab/ordering/utility.hh"
    )
endif()

