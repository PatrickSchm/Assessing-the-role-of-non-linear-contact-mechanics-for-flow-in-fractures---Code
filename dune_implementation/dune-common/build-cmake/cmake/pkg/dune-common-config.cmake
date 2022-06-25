if(NOT dune-common_FOUND)

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was dune-common-config.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

#import the target
get_filename_component(_dir "${CMAKE_CURRENT_LIST_FILE}" PATH)
include("${_dir}/dune-common-targets.cmake")

#report other information
set_and_check(dune-common_PREFIX "${PACKAGE_PREFIX_DIR}")
set_and_check(dune-common_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include")
set(dune-common_CXX_FLAGS "-std=c++17  -Wall -Wunused -Wmissing-include-dirs -Wcast-align -Wno-sign-compare -Wno-unused-parameter -Wno-deprecated-declarations -fno-strict-aliasing -fstrict-overflow -fno-finite-math-only -fopenmp -O3 -std=c++17 -L/opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64 -lgmp -lmpfr -march=native -lmkl_rt -lpthread -lm -ldl -m64 -lstdc++fs")
set(dune-common_CXX_FLAGS_DEBUG "-g")
set(dune-common_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG")
set(dune-common_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
set(dune-common_CXX_FLAGS_RELWITHDEBINFO "-O2 -g -DNDEBUG")
set(dune-common_LIBRARIES "dunecommon")
set_and_check(dune-common_SCRIPT_DIR "${PACKAGE_PREFIX_DIR}/share/dune/cmake/scripts")
set_and_check(DOXYSTYLE_FILE "${PACKAGE_PREFIX_DIR}/share/dune-common/doc/doxygen//Doxystyle")
set_and_check(DOXYGENMACROS_FILE "${PACKAGE_PREFIX_DIR}/share/dune-common/doc/doxygen//doxygen-macros")
set(dune-common_DEPENDS "")
set(dune-common_SUGGESTS "")
set_and_check(dune-common_MODULE_PATH "${PACKAGE_PREFIX_DIR}/share/dune/cmake/modules")
endif(NOT dune-common_FOUND)
