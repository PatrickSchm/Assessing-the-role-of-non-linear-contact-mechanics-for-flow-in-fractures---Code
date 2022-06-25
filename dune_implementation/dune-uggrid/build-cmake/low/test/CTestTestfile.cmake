# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-uggrid/low/test
# Build directory: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test-fifo "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/low/test/test-fifo")
set_tests_properties(test-fifo PROPERTIES  PROCESSORS "1" REQUIRED_FILES "test-fifo" SKIP_RETURN_CODE "77" TIMEOUT "300")
