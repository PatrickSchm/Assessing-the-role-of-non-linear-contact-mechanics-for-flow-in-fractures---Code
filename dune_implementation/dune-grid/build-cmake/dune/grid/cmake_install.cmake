# Install script for directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/grid" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/albertagrid.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/geometrygrid.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/identitygrid.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/onedgrid.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/uggrid.hh"
    "/home/paddy/pkg/dune_2d/dune-grid/dune/grid/yaspgrid.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/albertagrid/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/common/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/geometrygrid/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/identitygrid/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/onedgrid/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/test/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/uggrid/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/utility/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/yaspgrid/cmake_install.cmake")

endif()

