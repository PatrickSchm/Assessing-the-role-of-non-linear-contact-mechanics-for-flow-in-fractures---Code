// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:

#include "config.h"

#include <iostream>

#include <dune/localfunctions/hierarchical/hierarchicalp2.hh>
#include <dune/localfunctions/hierarchical/hierarchicalp2withelementbubble.hh>
#include <dune/localfunctions/hierarchical/hierarchicalprismp2.hh>

#include <dune/localfunctions/test/test-localfe.hh>

int main(int argc, char** argv) try
{
  bool success = true;

  Dune::HierarchicalP2LocalFiniteElement<double,double,1> hierarchicalp21dlfem;
  TEST_FE(hierarchicalp21dlfem);

  Dune::HierarchicalP2LocalFiniteElement<double,double,2> hierarchicalp22dlfem;
  TEST_FE(hierarchicalp22dlfem);

  Dune::HierarchicalP2LocalFiniteElement<double,double,3> hierarchicalp23dlfem;
  TEST_FE(hierarchicalp23dlfem);

  Dune::HierarchicalPrismP2LocalFiniteElement<double,double> hierarchicalprismp2lfem;
  TEST_FE(hierarchicalprismp2lfem);

  Dune::HierarchicalP2WithElementBubbleLocalFiniteElement<double,double,2> hierarchicalp2bubble2dlfem;
  TEST_FE(hierarchicalp2bubble2dlfem);

  return success ? 0 : 1;
}
catch (Dune::Exception e)
{
  std::cout << e.what() << std::endl;
  return 1;
}
