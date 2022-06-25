// -*- tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 2 -*-
// vi: set et ts=4 sw=2 sts=2:
#ifndef DUNE_RANNACHER_TUREK_LOCALINTERPOLATION_HH
#define DUNE_RANNACHER_TUREK_LOCALINTERPOLATION_HH

#include <cassert>
#include <vector>

#include <dune/common/fvector.hh>

#include <dune/geometry/referenceelements.hh>

#include <dune/localfunctions/common/localbasis.hh>

namespace Dune
{

  /**
     \brief please doc me

     \tparam D type to represent the field in the domain.
     \tparam R type to represent the field in the range.
     \tparam d domain dimension
   */
  template< class D, class R, unsigned int d >
  class RannacherTurekLocalInterpolation
  {
    typedef LocalBasisTraits< D, d, FieldVector< D, d >,
        R, 1, FieldVector< R, 1 >,
        FieldMatrix< R, 1, d > > Traits;

  public:
    template< class F, class C >
    void interpolate ( const F &f, std::vector< C > &out ) const
    {
      typedef typename Traits::DomainType DomainType;
      typedef typename Traits::RangeType RangeType;

      // get cubic reference element
      auto referenceElement = ReferenceElements< D, d >::cube();

      const int size = 2*d;
      assert( size == referenceElement.size( 1 ) );

      // resize vector
      out.resize( size );

      // evaluate local function in barycenter of codim 1 subentities
      for( int i = 0; i < size; ++i )
      {
        const DomainType &x = referenceElement.position( i, 1 );
        RangeType y;
        f.evaluate( x, y );
        out[ i ] = y;
      }
    }

  };

} // namespace Dune

#endif // #ifndef DUNE_RANNACHER_TUREK_LOCALINTERPOLATION_HH
