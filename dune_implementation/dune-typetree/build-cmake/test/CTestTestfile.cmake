# CMake generated Testfile for 
# Source directory: /home/paddy/pkg/dune_2d/dune-typetree/test
# Build directory: /home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(testtypetree "/home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test/testtypetree")
set_tests_properties(testtypetree PROPERTIES  PROCESSORS "1" REQUIRED_FILES "testtypetree" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(testtypetree_fail2 "/usr/bin/cmake" "--build" "." "--target" "testtypetree_fail2" "--config" "")
set_tests_properties(testtypetree_fail2 PROPERTIES  PROCESSORS "1" SKIP_RETURN_CODE "77" TIMEOUT "300" WILL_FAIL "true")
add_test(testtypetree_fail3 "/usr/bin/cmake" "--build" "." "--target" "testtypetree_fail3" "--config" "")
set_tests_properties(testtypetree_fail3 PROPERTIES  PROCESSORS "1" SKIP_RETURN_CODE "77" TIMEOUT "300" WILL_FAIL "true")
add_test(testtypetree_fail5 "/usr/bin/cmake" "--build" "." "--target" "testtypetree_fail5" "--config" "")
set_tests_properties(testtypetree_fail5 PROPERTIES  PROCESSORS "1" SKIP_RETURN_CODE "77" TIMEOUT "300" WILL_FAIL "true")
add_test(testtypetree_fail6 "/usr/bin/cmake" "--build" "." "--target" "testtypetree_fail6" "--config" "")
set_tests_properties(testtypetree_fail6 PROPERTIES  PROCESSORS "1" SKIP_RETURN_CODE "77" TIMEOUT "300" WILL_FAIL "true")
add_test(testtypetreetransformation "/home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test/testtypetreetransformation")
set_tests_properties(testtypetreetransformation PROPERTIES  PROCESSORS "1" REQUIRED_FILES "testtypetreetransformation" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(testfilteredcompositenode "/home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test/testfilteredcompositenode")
set_tests_properties(testfilteredcompositenode PROPERTIES  PROCESSORS "1" REQUIRED_FILES "testfilteredcompositenode" SKIP_RETURN_CODE "77" TIMEOUT "300")
add_test(testproxynode "/home/paddy/pkg/dune_2d/dune-typetree/build-cmake/test/testproxynode")
set_tests_properties(testproxynode PROPERTIES  PROCESSORS "1" REQUIRED_FILES "testproxynode" SKIP_RETURN_CODE "77" TIMEOUT "300")
