#include "config.h"

#include "typetreetestswitch.hh"

#if TEST_TYPETREE_INVALID

int main()
{
  return 0;
}

#else

#include <dune/typetree/filteredcompositenode.hh>

#include "typetreetestutility.hh"
#include "typetreetargetnodes.hh"

#include <type_traits>

struct LeafFilter
  : public Dune::TypeTree::SimpleFilter
{
  template<typename T, std::size_t new_k, std::size_t old_k>
  struct apply
  {
    static const bool value = std::is_same<typename T::NodeTag,Dune::TypeTree::LeafNodeTag>::value;
  };
};


template<typename Node, typename Filter>
class SimpleFilteredNode
  : public Dune::TypeTree::FilteredCompositeNode<Node,Filter>
  , public Counter
{

  typedef Dune::TypeTree::FilteredCompositeNode<Node,Filter> BaseT;

public:

  typedef SimpleCompositeTag ImplementationTag;

  static const char* name()
  {
    return "SimpleFilteredNode";
  }

  SimpleFilteredNode(Node& node)
    : BaseT(node)
  {}

};


template<typename Node, typename Filter>
void testFilteredCompositeNode(Node& node, Filter filter)
{
  typedef SimpleFilteredNode<Node,Filter> FN;
  FN filteredNode(node);
  Dune::TypeTree::applyToTree(filteredNode,TreePrinter());
  typedef Dune::TypeTree::TreeInfo<FN> TI;
  std::cout << "depth: " << TI::depth << std::endl
            << "nodes: " << TI::nodeCount << std::endl
            << "leafs: " << TI::leafCount << std::endl;

  typedef Dune::TypeTree::TransformTree<FN,TestTransformation> Transformation;

  typedef typename Transformation::Type TFN;

  TFN tfn = Transformation::transform(filteredNode);

  typedef Dune::TypeTree::TreeInfo<TFN> TTI;

  static_assert(TTI::depth == TI::depth, "error in transformation with filtered node");

  static_assert(TTI::nodeCount == TI::nodeCount, "error in transformation with filtered node");

  static_assert(TTI::leafCount == TI::leafCount, "error in transformation with filtered node");

  Dune::TypeTree::applyToTree(tfn,TreePrinter());
}


int main(int argc, char** argv)
{

  SimpleLeaf sl1;

  typedef SimplePower<SimpleLeaf,3> SP1;
  SP1 sp1_1;
  sp1_1.setChild(0,sl1);
  sp1_1.setChild(1,sl1);
  sp1_1.setChild(2,sl1);

  SimpleLeaf sl2;
  SP1 sp1_2(sl2,false);

  typedef SimpleComposite<SimpleLeaf,SP1,SimpleLeaf> SC1;
  SC1 sc1_1(sl1,sp1_2,sl2);

  typedef SimpleComposite<SimpleLeaf,SimpleLeaf,SimpleLeaf> SC2;
  SC2 sc2(sl1,sl1,sl1);

  typedef SimpleComposite<SimpleLeaf,SP1,SimpleLeaf,SC1> SVC1;
  SVC1 svc1_1(sl1,sp1_1,sl2,sc1_1);

  SP1 sp1_3(SimpleLeaf(),SimpleLeaf(),sl1);

  SVC1 svc1_2(SimpleLeaf(),SP1(sp1_2),sl2,const_cast<const SC1&>(sc1_1));

  typedef SimpleComposite<SimpleLeaf,SVC1,SimpleLeaf,SP1,SC1> SVC2;
  SVC2 svc2_1(sl1,svc1_2,sl2,sp1_3,sc1_1);

  testFilteredCompositeNode(svc2_1,LeafFilter());
  testFilteredCompositeNode<const SVC2>(svc2_1,LeafFilter());

  testFilteredCompositeNode(svc2_1,Dune::TypeTree::IndexFilter<1,3,2>());
  testFilteredCompositeNode<const SVC2>(svc2_1,Dune::TypeTree::IndexFilter<1,3,2>());

  typedef Dune::TypeTree::IndexFilter<3,1,0,4,1,2,1,0,2,1> IndexFilter1;
  testFilteredCompositeNode(svc2_1,IndexFilter1());
  testFilteredCompositeNode<const SVC2>(svc2_1,IndexFilter1());

  typedef SimpleFilteredNode<SVC2,IndexFilter1> SFN;
  SFN sfn(svc2_1);

  testFilteredCompositeNode(sfn,IndexFilter1());
  testFilteredCompositeNode<const SFN>(sfn,IndexFilter1());

  return 0;
}

#endif
