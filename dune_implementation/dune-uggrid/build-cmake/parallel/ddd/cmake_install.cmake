# Install script for directory: /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ug" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/include/ddd.h")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/analyser/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ctrl/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/ident/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/if/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/join/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/mgr/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/prio/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/xfer/cmake_install.cmake")

endif()

