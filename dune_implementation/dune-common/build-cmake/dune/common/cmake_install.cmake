# Install script for directory: /home/paddy/pkg/dune_2d/dune-common/dune/common

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/paddy/pkg/dune_2d/dune-common/build-cmake/lib/libdunecommon.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dune-common/dune-common-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dune-common/dune-common-targets.cmake"
         "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/CMakeFiles/Export/lib/cmake/dune-common/dune-common-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dune-common/dune-common-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/dune-common/dune-common-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dune-common" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/CMakeFiles/Export/lib/cmake/dune-common/dune-common-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/dune-common" TYPE FILE FILES "/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/CMakeFiles/Export/lib/cmake/dune-common/dune-common-targets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/common" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/alignment.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/alignedallocator.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/array.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/arraylist.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/assertandreturn.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/bartonnackmanifcheck.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/bigunsignedint.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/binaryfunctions.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/bitsetvector.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/boundschecking.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/classname.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/concept.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/conditional.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/debugalign.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/debugallocator.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/debugstream.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/deprecated.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/densematrix.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/densevector.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/diagonalmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/documentation.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/dotproduct.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/dynmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/dynmatrixev.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/dynvector.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/enumset.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/exceptions.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/filledarray.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/float_cmp.cc"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/float_cmp.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/fmatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/fmatrixev.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/forloop.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/ftraits.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/function.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/fvector.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/gcd.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/genericiterator.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/gmpfield.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/hash.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/hybridutilities.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/identitymatrix.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/indent.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/indices.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/interfaces.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/ios_state.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/iteratorfacades.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/iteratorrange.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/keywords.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/lcm.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/lru.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/mallocallocator.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/math.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/matvectraits.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/nullptr.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/overloadset.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parametertree.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/parametertreeparser.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/path.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/poolallocator.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/power.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/precision.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/propertymap.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/promotiontraits.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/proxymemberaccess.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/rangeutilities.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/reservedvector.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/shared_ptr.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/simd.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/singleton.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/sllist.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/stdstreams.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/stdthread.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/streamoperators.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/stringutility.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/timer.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/tuples.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/tupleutility.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/tuplevector.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/typelist.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/typetraits.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/typeutilities.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/unused.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/vc.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/version.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/visibility.hh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/dune/common/test" TYPE FILE FILES
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/test/iteratortest.hh"
    "/home/paddy/pkg/dune_2d/dune-common/dune/common/test/checkmatrixinterface.hh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/parallel/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/std/cmake_install.cmake")
  include("/home/paddy/pkg/dune_2d/dune-common/build-cmake/dune/common/test/cmake_install.cmake")

endif()

