file(REMOVE_RECURSE
  "libugL.pdb"
  "libugL.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang CXX)
  include(CMakeFiles/ugL.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
