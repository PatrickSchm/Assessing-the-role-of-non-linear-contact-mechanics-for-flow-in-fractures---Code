// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:

#ifndef DUNE_Q1_LOCALFINITEELEMENT_HH
#define DUNE_Q1_LOCALFINITEELEMENT_HH

#include <dune/geometry/type.hh>

#include <dune/localfunctions/common/localfiniteelementtraits.hh>
#include <dune/localfunctions/common/localtoglobaladaptors.hh>
#include <dune/localfunctions/lagrange/q1/q1localbasis.hh>
#include <dune/localfunctions/lagrange/q1/q1localcoefficients.hh>
#include <dune/localfunctions/lagrange/q1/q1localinterpolation.hh>

namespace Dune
{

  /** \brief The local Q1 finite element on cubes
      \tparam D Domain data type
      \tparam R Range data type
      \tparam dim Dimension of the cube
   */
  template<class D, class R, int dim>
  class Q1LocalFiniteElement
  {
  public:
    // user-defined default constructor is required for clang 3.8,
    // see https://gitlab.dune-project.org/core/dune-localfunctions/merge_requests/60
    /** default constructor */
    Q1LocalFiniteElement() {}

    /** \todo Please doc me !
     */
    typedef LocalFiniteElementTraits<Q1LocalBasis<D,R,dim>,Q1LocalCoefficients<dim>,
        Q1LocalInterpolation<dim,Q1LocalBasis<D,R,dim> > > Traits;

    /** \todo Please doc me !
     */
    const typename Traits::LocalBasisType& localBasis () const
    {
      return basis;
    }

    /** \todo Please doc me !
     */
    const typename Traits::LocalCoefficientsType& localCoefficients () const
    {
      return coefficients;
    }

    /** \todo Please doc me !
     */
    const typename Traits::LocalInterpolationType& localInterpolation () const
    {
      return interpolation;
    }

    /** \brief Number of shape functions in this finite element */
    unsigned int size () const
    {
      return basis.size();
    }

    /** \todo Please doc me !
     */
    static constexpr GeometryType type ()
    {
      return GeometryTypes::cube(dim);
    }

  private:
    Q1LocalBasis<D,R,dim> basis;
    Q1LocalCoefficients<dim> coefficients;
    Q1LocalInterpolation<dim,Q1LocalBasis<D,R,dim> > interpolation;
  };

  //! Factory for global-valued Q1 elements
  /**
   * \tparam Geometry Type of the geometry.  Used to extract the domain field
   *                  type and the dimension.
   * \tparam RF       Range field type.
   */
  template<class Geometry, class RF>
  class Q1FiniteElementFactory :
    public ScalarLocalToGlobalFiniteElementAdaptorFactory<
        Q1LocalFiniteElement<
            typename Geometry::ctype, RF, Geometry::mydimension
            >,
        Geometry
        >
  {
    typedef Q1LocalFiniteElement<
        typename Geometry::ctype, RF, Geometry::mydimension
        > LFE;
    typedef ScalarLocalToGlobalFiniteElementAdaptorFactory<LFE, Geometry> Base;

    static const LFE lfe;

  public:
    //! default constructor
    Q1FiniteElementFactory() : Base(lfe) {}
  };

  template<class Geometry, class RF>
  const typename Q1FiniteElementFactory<Geometry, RF>::LFE
  Q1FiniteElementFactory<Geometry, RF>::lfe;
}

#endif
