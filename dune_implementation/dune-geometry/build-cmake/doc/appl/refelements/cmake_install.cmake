# Install script for directory: /home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/dune-geometry/appl/refelements" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_hexahedron.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_line.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_prism.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_pyramid.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_quadrilateral.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_tetrahedron.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_triangle.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_hexahedron_edges.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_tetrahedron_edges.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_prism_edges.png"
    "/home/paddy/pkg/dune_2d/dune-geometry/doc/appl/refelements/gg_pyramid_edges.png"
    )
endif()

