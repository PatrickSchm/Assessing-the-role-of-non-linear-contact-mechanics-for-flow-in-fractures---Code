# Install script for directory: /home/paddy/pkg/dune_2d/dune-common/dune/common/parallel

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/common/parallel" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/collectivecommunication.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/communicator.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/indexset.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/indicessyncer.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/interface.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/localindex.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/mpicollectivecommunication.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/mpiguard.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/mpihelper.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/mpitraits.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/plocalindex.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/remoteindices.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/selection.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parallel/variablesizecommunicator.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/test/cmake_install.cmake")

endif()

