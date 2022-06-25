# Install script for directory: /home/paddy/pkg/dune_2d/dune-uggrid

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
  set(CMAKE_MODULE_PATH /home/paddy/pkg/dune_2d/dune-uggrid/cmake/modules;/home/paddy/pkg/dune_2d/dune-common/cmake/modules)
              set(DUNE_PYTHON_WHEELHOUSE /usr/local/share/dune/wheelhouse)
              include(DuneExecuteProcess)
              dune_execute_process(COMMAND "/usr/bin/cmake" --build . --target install_python --config $<CONFIG>)
              
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ug" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-uggrid/initug.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/dunecontrol/dune-uggrid" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-uggrid/dune.module")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dune-uggrid" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/cmake/pkg/dune-uggrid-config.cmake"
    "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dune-uggrid-config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/dune-uggrid" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-uggrid/config.h.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dune-uggrid.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/libug.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/ug" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/ug-config.cmake"
    "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/ug-config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dev/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/gm/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/dom/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/np/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/ui/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/lib/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/cmake/modules/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
