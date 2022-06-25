# Install script for directory: /home/paddy/pkg/dune_2d/pdelab_interface/dune/pdelab

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/adaptivity/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/backend/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/boilerplate/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/common/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/constraints/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/finiteelement/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/finiteelementmap/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/function/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/gridfunctionspace/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/gridoperator/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/instationary/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/localoperator/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/newton/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/ordering/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/stationary/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/pdelab_interface/build-cmake/dune/pdelab/test/cmake_install.cmake")

endif()

