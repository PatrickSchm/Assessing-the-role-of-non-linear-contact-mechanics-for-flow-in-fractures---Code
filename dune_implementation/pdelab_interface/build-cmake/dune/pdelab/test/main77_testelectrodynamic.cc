#include<iostream>

int main()
{
  std::cout << "This test was skipped because it failed the following CMake Conditions:" << std::endl;
  std::cout << "  dune-alugrid_FOUND" << std::endl;

  return 77;
}
