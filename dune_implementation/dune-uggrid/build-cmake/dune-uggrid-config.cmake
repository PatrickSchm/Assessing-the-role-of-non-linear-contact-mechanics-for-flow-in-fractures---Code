if(NOT dune-uggrid_FOUND)
# Whether this module is installed or not
set(dune-uggrid_INSTALLED OFF)

# Settings specific to the module
set(UG_PARALLEL yes)
set(UG_FOR_DUNE yes)
# Package initialization
# Set prefix to source dir
set(PACKAGE_PREFIX_DIR /home/paddy/pkg/dune_2d/dune-uggrid)
macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

#report other information
set_and_check(dune-uggrid_PREFIX "${PACKAGE_PREFIX_DIR}")
set_and_check(dune-uggrid_INCLUDE_DIRS "/home/paddy/pkg/dune_2d/dune-uggrid")
set(dune-uggrid_CXX_FLAGS "-std=c++17  -Wall -Wunused -Wmissing-include-dirs -Wcast-align -Wno-sign-compare -Wno-unused-parameter -Wno-deprecated-declarations -fno-strict-aliasing -fstrict-overflow -fno-finite-math-only -fopenmp -O3 -std=c++17 -L/opt/intel/compilers_and_libraries_2018.3.222/linux/mkl/lib/intel64 -lgmp -lmpfr -march=native -lmkl_rt -lpthread -lm -ldl -m64 -lstdc++fs")
set(dune-uggrid_CXX_FLAGS_DEBUG "-g")
set(dune-uggrid_CXX_FLAGS_MINSIZEREL "-Os -DNDEBUG")
set(dune-uggrid_CXX_FLAGS_RELEASE "-O3 -DNDEBUG")
set(dune-uggrid_CXX_FLAGS_RELWITHDEBINFO "-O2 -g -DNDEBUG")
set(dune-uggrid_DEPENDS "dune-common")
set(dune-uggrid_SUGGESTS "")
set(dune-uggrid_MODULE_PATH "/home/paddy/pkg/dune_2d/dune-uggrid/cmake/modules")
set(dune-uggrid_LIBRARIES "ugL;ugS2;ugS3")

# Lines that are set by the CMake build system via the variable DUNE_CUSTOM_PKG_CONFIG_SECTION


#import the target
if(dune-uggrid_LIBRARIES)
  get_filename_component(_dir "${CMAKE_CURRENT_LIST_FILE}" PATH)
  include("${_dir}/dune-uggrid-targets.cmake")
endif()
endif()
