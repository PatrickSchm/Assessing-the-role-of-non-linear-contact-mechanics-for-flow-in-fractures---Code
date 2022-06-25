# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid/albertagrid" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/agrid.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/albertagrid.cc"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/albertaheader.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/indexsets.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/indexstack.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/datahandle.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/misc.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/macroelement.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/elementinfo.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/geometrycache.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/meshpointer.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/macrodata.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/dofadmin.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/dofvector.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/refinement.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/coordcache.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/level.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/undefine-2.0.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/undefine-3.0.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/entity.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/entity.cc"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/entityseed.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/hierarchiciterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/algebra.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/geometry.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/geometry.cc"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/projection.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/transformation.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/leveliterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/leafiterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/treeiterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/intersection.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/intersection.cc"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/intersectioniterator.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/capabilities.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/gridfactory.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/dgfparser.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/albertareader.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/gridfamily.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/gridview.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/persistentcontainer.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/backuprestore.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid/geometryreference.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/albertagrid/test/cmake_install.cmake")

endif()

