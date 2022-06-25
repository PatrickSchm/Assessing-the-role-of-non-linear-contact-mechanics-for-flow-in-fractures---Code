# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-uggrid/parallel/ddd/basic/test
# Build directory: /home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(testbtree "/home/paddy/pkg/dune_2d/dune-uggrid/build-cmake/parallel/ddd/basic/test/testbtree")
set_tests_properties(testbtree PROPERTIES  PROCESSORS "1" REQUIRED_FILES "testbtree" SKIP_RETURN_CODE "77" TIMEOUT "300")
