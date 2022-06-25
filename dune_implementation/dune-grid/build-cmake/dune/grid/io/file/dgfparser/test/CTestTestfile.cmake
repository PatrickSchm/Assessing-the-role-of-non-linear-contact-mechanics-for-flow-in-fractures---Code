# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-grid/dune/grid/io/file/dgfparser/test
# Build directory: /home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/dgfparser/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test-dgf-yasp "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/dgfparser/test/test-dgf-yasp")
set_tests_properties(test-dgf-yasp PROPERTIES  PROCESSORS "1" REQUIRED_FILES "test-dgf-yasp" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(test-dgf-yasp-offset "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/dgfparser/test/test-dgf-yasp-offset" "/home/paddy/pkg/dune_2d/dune-grid/doc/grids/dgf/test2d_offset.dgf")
set_tests_properties(test-dgf-yasp-offset PROPERTIES  PROCESSORS "1" REQUIRED_FILES "test-dgf-yasp-offset" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(test-dgf-oned "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/dgfparser/test/test-dgf-oned")
set_tests_properties(test-dgf-oned PROPERTIES  PROCESSORS "1" REQUIRED_FILES "test-dgf-oned" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(test-dgf-ug "/home/paddy/pkg/dune_2d/dune-grid/build-cmake/dune/grid/io/file/dgfparser/test/test-dgf-ug")
set_tests_properties(test-dgf-ug PROPERTIES  PROCESSORS "1" REQUIRED_FILES "test-dgf-ug" SKIP_RETURN_CODE "77" TIMEOUT "300")
