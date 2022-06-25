# Install script for directory: /home/paddy/pkg/dune_2d/dune-typetree/dune/typetree

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/typetree" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/accumulate_static.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/applytochildrensingletree.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/applytochildrentreepair.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/childextraction.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/compositenode.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/exceptions.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/filteredcompositenode.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/filters.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/fixedcapacitystack.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/generictransformationdescriptors.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/leafnode.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/nodeinterface.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/nodetags.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/pairtraversal.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/powercompositenodetransformationtemplates.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/powernode.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/proxynode.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/simpletransformationdescriptors.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/transformation.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/transformationutilities.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/traversal.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/traversalutilities.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/treepath.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/typetraits.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/typetree.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/utility.hh"
    "/home/paddy/pkg/dune_2d/dune-typetree/dune/typetree/visitor.hh"
    )
endif()

