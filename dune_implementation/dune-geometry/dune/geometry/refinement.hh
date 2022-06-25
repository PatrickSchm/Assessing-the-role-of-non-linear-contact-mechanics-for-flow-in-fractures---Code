// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
#ifndef DUNE_GEOMETRY_REFINEMENT_HH
#define DUNE_GEOMETRY_REFINEMENT_HH

/*!
 * \file
 * \brief This file simply includes all \ref Refinement implementations
 *        so you don't have to do them separately.
 */

/*!
 * \addtogroup Refinement Refinement
 * \ingroup Grid
 *   <!--WWWWWWWWWWWWW-->
 *
 * \section General
 * <!--=========-->
 *
 * The %Refinement system allows to temporarily refine a grid or single
 * entities without changing the grid itself.  You may want to do this
 * because you want to write your data to a file and have to do
 * subsampling, but want to continue the calculation with the
 * unmodified grid afterwards.
 *
 * \subsection Can_do What Refinement can do for you
 * <!---------------------------------------------->
 *
 * For a given geometry type and number of refined intervals, %Refinement will
 * - assign consecutive integer indices starting at 0 to each
 *   subvertex,
 * - assign consecutive integer indices starting at 0 to each
 *   subelement,
 * - calculate the coordinates of the subvertices for you,
 * - calculate subvertex-indices of the corners of the subelements for
 *   you.
 *
 * The geometry type of the refined entity and of the subelements may
 * be different, for example you can refine a quadrilateral but get
 * subelements which are triangles.
 *
 * Currently the following geometry types are supported:
 * - hypercubes (quadrilaterals, hexahedrons),
 * - simplices (triangles, tetrahedrons),
 * - triangulating hypercubes into simplices (quadrilaterals ->
 *   triangles, hexahedrons -> tetrahedrons).
 *
 * \subsection Cannot_do What Refinement can't do for you
 * <!--------------------------------------------------->
 *
 * - %Refinement does not actually subsample your data, it only tells
 *   you \em where to subsample your data.
 * - The geometry types need to be known at compile time.  See \link
 *   VirtualRefinement VirtualRefinement\endlink if you need to
 *   calculate the right geometry type at run time.
 * - No %Refinement implementations for anything besides hypercubes and
 *   simplices have been written yet.
 *
 * \section User_interface The user interface
 * <!--===================================-->
 *
 * \code
 * template<unsigned topologyId, class CoordType,
 *          unsigned coerceToId, int dimension>
 * class StaticRefinement
 * {
 * public:
 *   enum { dimension };
 *
 *   template<int codimension>
 *   struct codim
 *   {
 *     class SubEntityIterator;
 *   };
 *   typedef ImplementationDefined VertexIterator;  // These are aliases for codim<codim>::SubEntityIterator
 *   typedef ImplementationDefined ElementIterator;
 *
 *   typedef ImplementationDefined IndexVector; // These are FieldVectors
 *   typedef ImplementationDefined CoordVector;
 *
 *   static int nVertices(Dune::RefinementIntervals intervals);
 *   static VertexIterator vBegin(Dune::RefinementIntervals intervals);
 *   static VertexIterator vEnd(Dune::RefinementIntervals intervals);
 *
 *   static int nElements(Dune::RefinementIntervals intervals);
 *   static ElementIterator eBegin(Dune::RefinementIntervals intervals);
 *   static ElementIterator eEnd(Dune::RefinementIntervals intervals);
 * }
 * \endcode
 *
 * The Iterators can do all the usual things that Iterators can do,
 * except dereferencing.  In addition, to do something useful, they
 * support some additional methods:
 *
 * \code
 * template<unsigned topologyId, class CoordType, unsigned coerceToId, int dimension>
 * class VertexIterator
 * {
 * public:
 *   typedef ImplementationDefined Refinement;
 *
 *   int index() const;
 *   Refinement::CoordVector coords() const;
 * }
 *
 * template<unsigned topologyId, class CoordType, unsigned coerceToId, int dimension>
 * class ElementIterator
 * {
 * public:
 *   typedef ImplementationDefined Refinement;
 *
 *   int index() const;
 *   // Coords of the center of mass of the element
 *   Refinement::CoordVector coords() const;
 *   Refinement::IndexVector vertexIndices() const;
 * }
 * \endcode
 *
 * \subsection How_to_use_it How to use it
 * <!------------------------------------>
 *
 * Either use VirtualRefinement, or if you don't want to do that, read
 * on.
 *
 * \code
 * // Include the necessary files
 * #include <dune/grid/common/refinement.hh>
 *
 * // If you know that you are only ever going to need one refinement
 * // backend, you can include the corresponding file directly:
 * //#include <dune/grid/common/refinement/hcube.cc>
 *
 * // Get yourself the Refinement you need:
 * typedef StaticRefinement<Impl::CubeTopology<2>::type::id,
 *                          SGrid<2, 2>::ctype,
 *                          Impl::CubeTopology<2>::type::id,
 *                          2> MyRefinement;
 *
 * int main()
 * {
 *   const Dune::RefinementIntervals refinementlevel = Dune::refinementLevels(2); // equivalent: Dune::refinementIntervals(4)
 *   cout << "Using refinementlevel = " << refinementlevel.intervals() << endl << endl;
 *
 *   // get Number of Vertices
 *   cout << "Number of Vertices: "
 *        << MyRefinement::nVertices(refinementlevel)
 *        << endl;
 *
 *   // Iterate over Vertices
 *   cout << "Index\tx\ty" << endl;
 *   MyRefinement::VertexIterator vEnd = MyRefinement::vEnd(refinementlevel);
 *   for(MyRefinement::VertexIterator i = MyRefinement::vBegin(refinementlevel); i != vEnd; ++i)
 *     cout << i.index() << "\t" << i.coords()[0] << "\t" << i.coords()[1] << endl;
 *   cout << endl;
 *
 *   // Iterate over Vertices
 *   cout << "Index\tEcke0\tEcke1\tEcke2\tEcke3" << endl;
 *   MyRefinement::ElementIterator eEnd = MyRefinement::eEnd(refinementlevel);
 *   for(MyRefinement::ElementIterator i = MyRefinement::eBegin(refinementlevel); i != eEnd; ++i)
 *     cout << i.index() << "\t"
 *          << i.indexVertices()[0] << "\t" << i.indexVertices()[1] << "\t"
 *          << i.indexVertices()[2] << "\t" << i.indexVertices()[3] << endl;
 *   cout << endl;
 * }
 * \endcode
 *
 * \subsection Guarantees
 * <!------------------->
 *
 * The %Refinement system gives this guarantee (besides conforming to
 * the above interface:
 * - The indices of the subvertices and subelement start at 0 and are
 *   consecutive.
 *
 * \section Implementing Implementing a new Refinement type
 * <!--=================================================-->
 *
 * If you want to write a %Refinement implementation for a particular
 * geometry type, e.g. SquaringTheCircle (or a particular set of
 * geometry types) here is how:
 *
 * - create a file refinement/squaringthecircle.cc and \#include
 *   "base.cc".  Your file will be included by others, so don't forget
 *   to protect against double inclusion.
 * - implement a class (or template class) RefinementImp conforming
 *   exactly to the user interface above.
 * - put it (and it's helper stuff as appropriate) into it's own
 *   namespace Dune::RefinementImp::SquaringTheCircle.
 * - define the mapping of topologyId, CoordType and coerceToId to your
 *   implementation by specialising template struct
 *   RefinementImp::Traits.  It should look like this:
 *   \code
 * namespace Dune::RefinementImp {
 *   // we're only implementing this for dim=2
 *   template<class CoordType>
 *   struct Traits<sphereTopologyId, CoordType,
 *               Impl::CubeTopology<2>::type::id, 2>
 * {
 *     typedef SquaringTheCircle::RefinementImp<CoordType> Imp;
 *   };
 * }
 *   \endcode
 *   If you implement a template class, you have to specialise struct
 *   RefinementImp::Traits for every possible combination of
 *   topologyId and coerceToId that your implementation supports.
 * - \#include "refinement/squaringthecircle.cc" from refinement.hh.
 *
 * This is enough to integrate your implementation into the %Refinement
 * system.  You probably want to include it into \link
 * VirtualRefinement VirtualRefinement\endlink also.
 *
 * \subsection Namespaces
 * <!------------------->
 *
 * The (non-virtual) %Refinement system is organized in the following
 * way into namespaces:
 * - Only template class StaticRefinement lives directly in namespace Dune.
 * - Use namespace Dune::RefinementImp for all the Implementation.
 * - Use namespace Dune::RefinementImp::HCube, namespace
 *   Dune::RefinementImp::Simplex, ... for each implementation.
 *
 * The complete \link VirtualRefinement VirtualRefinement\endlink stuff
 * is directly in namespace Dune.
 *
 * \subsection Layers Conceptual layers
 * <!--------------------------------->
 *
 * - <strong>Layer 0</strong> declares struct
 *   RefinementImp::Traits<topologyId, CoordType, coerceToId, dim>.
 *   It's member typedef Imp tells which %Refinement implementation to
 *   use for a given topologyId (and CoordType).  It is located in
 *   refinementbase.cc.
 * - <strong>Layer 1</strong> defines
 *   RefinementImp::XXX::RefinementImp.  It implements the Refinements
 *   for each topologyId, coerceToId (and CoordType).  Also in this
 *   layer are the definitions of struct RefinementImp::Traits.  This
 *   layer is located in refinementXXX.cc.
 * - <strong>Layer 2</strong> puts it all together.  It defines class
 *   StaticRefinement<topologyId, CoordType, coerceToId, dim> by deriving
 *   from the corresponding RefinementImp.  It is located in
 *   refinementbase.cc.
 * - There is a dummy <strong>layer 2.5</strong> which simply includes
 *   all the refinementXXX.cc files.  It is located in refinement.cc.
 *
 * \link VirtualRefinement VirtualRefinement\endlink adds two more
 * layers to the ones defined here.
 */
// The interface (template<...> class StaticRefinement) is not included here
// since it derives from parts which I consider implementation.  Look
// into refinement/base.cc if the documentation is above is not enough.
#include "refinement/base.cc"

#include "refinement/hcube.cc"
#include "refinement/simplex.cc"
#include "refinement/hcubetriangulation.cc"
#include "refinement/prismtriangulation.cc"
#include "refinement/pyramidtriangulation.cc"

#endif // DUNE_GEOMETRY_REFINEMENT_HH
