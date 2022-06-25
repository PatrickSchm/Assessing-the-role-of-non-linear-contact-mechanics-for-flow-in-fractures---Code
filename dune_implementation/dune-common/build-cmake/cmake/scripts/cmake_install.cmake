# Install script for directory: /home/paddy/pkg/dune_2d/dune-common/cmake/scripts

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dune/cmake/scripts" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/conf.py.in"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/CreateDoxyFile.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/envdetect.py"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/extract_cmake_data.py"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/FinalizeHeadercheck.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/index.rst.in"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/InstallFile.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/main77.cc.in"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/pyversion.py"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/run-in-dune-env.sh.in"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/RunDoxygen.cmake"
    "/home/paddy/pkg/dune_2d/dune-common/cmake/scripts/sphinx_cmake_dune.py"
    )
endif()

