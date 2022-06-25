# Install script for directory: /home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/functions/functionspacebases" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/basistags.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/bsplinebasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/compositebasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/concepts.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/defaultglobalbasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/defaultlocalindexset.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/defaultlocalview.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/defaultnodetorangemap.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/flatmultiindex.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/flatvectorbackend.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/hierarchicvectorwrapper.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/interpolate.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/lagrangebasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/lagrangedgbasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/powerbasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/pq1nodalbasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/pqknodalbasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/rannacherturekbasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/nodes.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/sizeinfo.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/subspacebasis.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/subspacelocalview.hh"
    "/home/paddy/pkg/dune_2d/dune-functions/dune/functions/functionspacebases/taylorhoodbasis.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-functions/build-cmake/dune/functions/functionspacebases/test/cmake_install.cmake")

endif()

