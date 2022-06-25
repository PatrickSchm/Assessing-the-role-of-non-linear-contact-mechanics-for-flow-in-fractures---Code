//||===========================================================================================||
//||    Author:       Patrick Schmidt                                                          ||
//||    Date:         24.08.2016                                                               ||
//||    Name:         parameter_porous.hh                                                      ||
//||    Description:  Defines classes in order to define all necessary parameters to run a     ||
//||                  porous simulation; Functions are defined to change variables with space  ||
//||                  and time; constraint functions are also implemented                      ||
//||===========================================================================================||
#ifndef IMPLEMENTATION_PARAMETER_PARAMETER_POROUS_HH_
#define IMPLEMENTATION_PARAMETER_PARAMETER_POROUS_HH_

#include <dune/common/parametertree.hh>
#include <dune/pdelab/common/function.hh>
#include <dune/pdelab/constraints/common/constraintsparameters.hh>

namespace Dune
{
namespace PDELab
{
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Structure
// Name:         PorousBoundaryCondition
// Description:  Gives int flags for different types of boundary conditions
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
struct PorousBoundaryCondition
{
    enum Type
    {
        DoNothing = 0,
        DisplacementDirichlet = 1,
        PressureDirichlet = 2,
        StressNeumann = 3,
        FlowNeumann = 4,
        BoundaryCoupling = 5
    };
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Structure
// Name:         PorousParameterTraits
// Description:  Defines Traits for parameter class
// Paramater:      ->  GV = Gridview
//                 ->  RF = Rangefield
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename GV, typename RF>
struct PorousParameterTraits
{
    //-------------------------------------- Traits definition --------------------------------------
    typedef GV GridView;                                        // grid view
    enum
    {
        dimDomain = GV::dimension                               //dimension of the domain
    };
    typedef typename GV::Grid::ctype DomainField;               // Export type for domain field
    typedef Dune::FieldVector<DomainField, dimDomain> Domain;   // domain type
    typedef Dune::FieldVector <
    DomainField, dimDomain - 1 > IntersectionDomain;            // domain type
    typedef RF RangeField;                                      // Export type for range field
    typedef Dune::FieldVector <
    RF, GV::dimensionworld > DisplacementRange;                 // deformation range type
    typedef PorousBoundaryCondition BoundaryCondition;          // boundary type value
    typedef typename GV::Traits::template Codim <
        0 >::Entity Element;                                    // boundary type value
    typedef typename GV::Intersection Intersection;             // grid intersection type
//-be
};


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Function
// Name:         evaluateDisplacementGridFunction
// Description:  Compile-time switch to enable scalar and vector grid functions -
//               here: scalar
// Paramater:      ->  GF = GridFunctionSpace
//                 ->  Entity = given entity
//                 ->  Domain = given domain
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename GF, typename Entity, typename Domain>
typename GF::Traits::RangeType evaluateDisplacementGridFunction(
    const GF& gf, const Entity& e, const Domain& x)
{
    static_assert(int(GF::Traits::dimRange) == int(Domain::dimension), "dimension of function range does not match grid dimension");
    typename GF::Traits::RangeType y;
    gf.evaluate(e, x, y);

    return y;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Function
// Name:         evaluateDisplacementGridFunction
// Description:  Compile-time switch to enable scalar and vector grid functions -
//               here: vector
// Paramater:      ->  GF = GridFunctionSpace
//                 ->  Entity = given entity
//                 ->  Domain = given domain
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename GF, typename Entity, typename Domain>
FieldVector <
typename GF::template Child<0>::Type::Traits::RangeFieldType,
         GF::CHILDREN > evaluateDisplacementGridFunction(const GF& gf,
                 const Entity& e, const Domain& x)
{
    static_assert(Domain::dimension == GF::CHILDREN, "dimension of function range does not match grid dimension");
    FieldVector <
    typename GF::template Child<0>::Type::Traits::RangeFieldType,
             GF::CHILDREN > y;
    typename GF::template Child<0>::Type::Traits::RangeType cy;
    for (int d = 0; d < Domain::dimension; ++d)
    {
        gf.child(d).evaluate(e, x, cy);

        y[d] = cy;
    }

    return y;
}

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Class
// Name:         PorousDefaultParameters
// Description:  Defines parameter class which includes parameters and boundary conditions of
//               porous problem
// Paramater:      ->  GV = Gridview
//                 ->  RF = The range field type of the solid/Fluid solution
//                 ->  F = External force term function (vector-valued)
//                 ->  B = Boundary type function returning an element
//                 ->  D = Dirichlet pressure function
//                 ->  J = Neumann stress boundary function (vector- or scalar-valued
//                           - scalar magnitude in normal direction)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename GV, typename RF, typename F, typename B, typename D,
         typename J, bool porous = false, bool tensor = false>
class PorousDefaultParameters
{
public:

    static const bool assemble_porous = porous;
    static const bool assemble_full_tensor = tensor;

    //! Type traits
    typedef PorousParameterTraits<GV, RF> Traits;

    //! Constructor
    PorousDefaultParameters(const Dune::ParameterTree& config,
                            const Dune::ParameterTree& solver, F& f, B& b, D& d, J& j) :
        _K(config.get<std::vector<double>>("K")),
        _G(config.get<std::vector<double>>("G")),
        _gammaw(config.get<std::vector<double>>("gammaw")),
        _per_x(config.get<std::vector<double>>("per_x")),
        _per_y(config.get<std::vector<double>>("per_y")),
        _per_z(config.get<std::vector<double>>("per_z")),
        _Kfl(config.get<std::vector<double>>("Kfl")),
        _Ks(config.get<std::vector<double>>("Ks")),
        _por(config.get<std::vector<double>>("por")),
        _delta_0(config.get<std::vector<double>>("delta_0")),
        _eta(config.get<std::vector<double>>("eta")),
        _EFrac(config.get<std::vector<double>>("EFrac")),
        _PerTan(config.get<std::vector<double>>("perTan")),
        _f(f),
        _b(b),
        _d(d),
        _j(j)
    {
    }

    PorousDefaultParameters(const std::vector<RF&> K,
                            const std::vector<RF&> G,
                            const std::vector<RF&> gammaw,
                            const std::vector<RF&> per_x,
                            const std::vector<RF&> per_y,
                            const std::vector<RF&> per_z,
                            const std::vector<RF&> Kfl,
                            const std::vector<RF&> Kgr,
                            const std::vector<RF&> v,
                            const std::vector<RF&> por,
                            const std::vector<RF&> delta_0,
                            const std::vector<RF&> eta,
                            const std::vector<RF&> EFrac,
                            const std::vector<RF&> PerTan,
                            const std::vector<RF&> theta,
                            F& f,
                            B& b,
                            D& d,
                            J& j) :
        _K(K),
        _G(G),
        _gammaw(gammaw),
        _per_x(per_x),
        _per_y(per_y),
        _per_z(per_z),
        _Kfl(Kfl),
        _Ks(Kgr),
        _v(v),
        _por(por),
        _delta_0(delta_0),
        _eta(eta),
        _EFrac(EFrac),
        _PerTan(PerTan),
        _f(f),
        _b(b),
        _d(d),
        _j(j)
    {
    }
    //---------------------------------- Template member functions ----------------------------------
    // boundary condition type from local element coordinate
    template<typename EG>       // Element Geometry
    typename Traits::DisplacementRange f(const EG& e,
                                         const typename Traits::Domain& x) const
    {
        typename F::Traits::RangeType fvalue;
        return evaluateDisplacementGridFunction(_f, e.entity(), x);
    }

    // boundary condition type from local intersection coordinate
    template<typename IG>       // Intersection Geometry
    std::vector<typename Traits::BoundaryCondition::Type> bctype(
        const IG& is,
        const typename Traits::IntersectionDomain& x) const
    {
        std::vector<typename B::Traits::RangeType> y(4);

        _b.evaluate(is, x, y);

        return y;
    }

    //--------------------------------------- Solid Parameters ---------------------------------------
    // Calculates Youngs Modulus value for local coordinates of element
    template<typename EG>       // Element Geometry
    typename Traits::RangeField K(const EG& eg,
                                  const typename Traits::Domain& x, int iMat) const
    {
        return _K[iMat];
    }

    // Calculates Youngs Modulus value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField K(const IG& ig,
                                  const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _K[iMat];
    }

    template<typename EG>       // Element Geometry
    typename Traits::RangeField G(const EG& eg,
                                  const typename Traits::Domain& x, int iMat) const
    {
        return _G[iMat];
    }

    // Calculates Youngs Modulus value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField G(const IG& ig,
                                  const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _G[iMat];
    }

    // Calculates poissont's ratio for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField v(const EG& eg,
                                  const typename Traits::Domain& x,  int iMat) const
    {
        return _v[iMat];
    }

    // Calculates Youngs Modulus value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField v(const IG& ig,
                                  const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _v[iMat];
    }

    // Calculates bulk modulus of grains for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField Kgr(const EG& eg,
                                    const typename Traits::Domain& x,  int iMat) const
    {
        return _Ks[iMat];
    }

    // Calculates bulk modulus of grains for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField Kgr(const IG& ig,
                                    const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _Ks[iMat];
    }

    //--------------------------------------- Fluid Parameters ---------------------------------------
    // Calculates permeability in x-direction for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField Per_x(const EG& eg,
                                      const typename Traits::Domain& x,  int iMat) const
    {
        return _per_x[iMat];
    }

    // Calculates permeability in x-direction value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField Per_x(const IG& ig,
                                      const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _per_x[iMat];
    }

    // Calculates permeability in y-direction value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField Per_y(const EG& eg,
                                      const typename Traits::Domain& x,  int iMat) const
    {
        return _per_y[iMat];
    }

    // Calculates permeability in y-direction for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField Per_y(const IG& ig,
                                      const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _per_y[iMat];
    }

    // Calculates permeability in z-direction value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField Per_z(const EG& eg,
                                      const typename Traits::Domain& x,  int iMat) const
    {
        return _per_z[iMat];
    }

    // Calculates permeability in z-direction for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField Per_z(const IG& ig,
                                      const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _per_z[iMat];
    }

    // Calculates bulk modulus of fluid value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField Kfl(const EG& eg,
                                    const typename Traits::Domain& x,  int iMat) const
    {
        return _Kfl[iMat];
    }

    // Calculates bulk modulus of fluid for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField Kfl(const IG& ig,
                                    const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _Kfl[iMat];
    }

    //--------------------------- Porous Parameter (Both solid and fluid) ---------------------------
    // Calculates porosity value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField por(const EG& eg,
                                    const typename Traits::Domain& x,  int iMat) const
    {
        return _por[iMat];
    }

    // Calculates porosity value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField por(const IG& ig,
                                    const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _por[iMat];
    }

    // Calculates density value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField gammaw(const EG& eg,
                                       const typename Traits::Domain& x,  int iMat) const
    {
        return _gammaw[iMat];
    }

    // Calculates density value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField gammaw(const IG& ig,
                                       const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _gammaw[iMat];
    }


    // Calculates density value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField Delta_0(const EG& eg,
                                       const typename Traits::Domain& x,  int iMat) const
    {
        return _delta_0[iMat];
    }

    // Calculates density value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField Delta_0(const IG& ig,
                                       const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _delta_0[iMat];
    }

    // Calculates density value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField Eta(const EG& eg,
                                       const typename Traits::Domain& x,  int iMat) const
    {
        return _eta[iMat];
    }

    // Calculates density value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField Eta(const IG& ig,
                                       const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _eta[iMat];
    }

        // Calculates density value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField EFrac(const EG& eg,
                                       const typename Traits::Domain& x,  int iMat) const
    {
        return _EFrac[iMat];
    }

    // Calculates density value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField EFrac(const IG& ig,
                                       const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _EFrac[iMat];
    }

            // Calculates density value for local coordinates of element intersection
    template<typename EG>       // Element Geometry
    typename Traits::RangeField PerTan(const EG& eg,
                                       const typename Traits::Domain& x,  int iMat) const
    {
        return _PerTan[iMat];
    }

    // Calculates density value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField PerTan(const IG& ig,
                                       const typename Traits::IntersectionDomain& x,  int iMat) const
    {
        return _PerTan[iMat];
    }


    //------------------------------ Evaluation of boundary conditions ------------------------------

    // Dirichlet boundary condition value from local cell coordinate
    template<typename EG>       // Element Geometry
    typename Traits::DisplacementRange g(const EG& e,
                                         const typename Traits::Domain& x) const
    {
        typename D::Traits::RangeType y;
        _d.evaluate(e, x, y);

        return y;
    }

    // Dirichlet boundary condition value from local intersection coordinate
    template<typename IG>       // Intersection Geometry
    typename Traits::DisplacementRange
    DUNE_DEPRECATED_MSG("Deprecated in DUNE-PDELab 2.4, use entity-based version instead!")
    d(const IG& ig, const typename Traits::IntersectionDomain& x) const
    {
        auto e = ig.inside();
        typename D::Traits::RangeType y;
        _d.evaluate(e, ig.geometryInInside().global(x), y);

        return y;
    }

    // pressure source term
    template<typename EG>       // Element Geometry
    typename Traits::RangeField g2(const EG& e,
                                   const typename Traits::Domain& x) const
    {
        typename D::Traits::RangeType y;
        _d.evaluate(e, x, y);

        return y;
    }

    // Neumann boundary condition (stress) - version for scalar function
    template<typename IG>       // Intersection Geometry
    typename std::enable_if <
    J::Traits::dimRange == 1 && (GV::dimension > 1)
    && AlwaysTrue<IG>::value, // required to force lazy evaluation
    typename Traits::DisplacementRange >::type j(const IG& ig,
            const typename Traits::IntersectionDomain& x,
            typename Traits::Domain normal) const
    {
        typename J::Traits::RangeType r;
        auto e = ig.inside();
        _j.evaluate(e, ig.geometryInInside().global(x), r);

        normal *= r;
        return normal;
    }

    // Neumann boundary condition (stress) - version for vector-valued function
    template<typename IG>       // Intersection Geometry
    typename std::enable_if <
    J::Traits::dimRange == GV::dimension
    && AlwaysTrue<IG>::value, // required to force lazy evaluation
    typename Traits::DisplacementRange >::type j(const IG& ig,
            const typename Traits::IntersectionDomain& x,
            const typename Traits::Domain& normal) const
    {
        auto e = ig.inside();
        typename J::Traits::RangeType y;
        _j.evaluate(e, ig.geometryInInside().global(x), y);
        return y;
    }

    //---------------------------------------- Time Settings ----------------------------------------
    // sets time for different variables/functions
    void setTime(double time)
    {
        _f.setTime(time);
        _b.setTime(time);
        _d.setTime(time);
        _j.setTime(time);
    }

private:
    //---------------------- Definition of private variables of parameter class ----------------------
    const std::vector<RF> _K;        // Young's modulus
    const std::vector<RF> _G;        // Young's modulus
    const std::vector<RF> _gammaw;   // Density
    const std::vector<RF> _per_x;       // Permeability x-direction
    const std::vector<RF> _per_y;       // Permeability y-direction
    const std::vector<RF> _per_z;       // Permeability y-direction
    const std::vector<RF> _Kfl;      // Bulk modulus fluid
    const std::vector<RF> _Ks;      // Bulk modulus grains
    const std::vector<RF> _v;        // Poisson's value
    const std::vector<RF> _por;      // porosity
    const std::vector<RF> _delta_0;   // Density
    const std::vector<RF> _eta;   // Density
    const std::vector<RF> _EFrac;   // Density
    const std::vector<RF> _PerTan;   // Density
    F& _f;              // External forces
    B& _b;              // Boundary type function
    D& _d;              // Dirichlet Pressure function
    J& _j;              // Neumann boundary condition
//-be
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template class
// Name:         PorousDisplacementDirichletConstraints
// Description:  Defines whether constrained is applied on DoF for displacements
// Paramater:      ->  PRM = Parameter class (here: PorousDefaultParameters)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename PRM>
class PorousDisplacementDirichletConstraints: public Dune::PDELab::DirichletConstraintsParameters
{
public:
    //------------------------------- Constructor for constraint class -------------------------------
    PorousDisplacementDirichletConstraints(const PRM & _prm, int dof) :
        prm_(_prm)
    {
        activeDof = dof;
    }

    //-------------------- Checks for Dirichlet boundary condition - returns bool --------------------
    template<typename I>
    bool isDirichlet(const I & intersection,
                     const Dune::FieldVector < typename I::ctype, I::dimension - 1 > & coord) const
    {
        std::vector<PorousBoundaryCondition::Type> bctype = prm_.bctype(
                    intersection, coord);

        return (bctype[activeDof]
                == PorousBoundaryCondition::DisplacementDirichlet);
    }


private:
    //--------------------- Definition of private variables of constraint class ---------------------
    const PRM & prm_;
    int activeDof;
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template class
// Name:         PorousPressureDirichletConstraints
// Description:  Defines whether constrained is applied on DoF for pressure
// Paramater:      ->  PRM = Parameter class (here: PorousDefaultParameters)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename PRM>
class PorousPressureDirichletConstraints: public Dune::PDELab::DirichletConstraintsParameters
{

public:
    //------------------------------- Constructor for constraint class -------------------------------
    PorousPressureDirichletConstraints(const PRM & _prm) :
        prm_(_prm)
    {
    }

    //-------------------- Checks for Dirichlet boundary condition - returns bool --------------------
    template<typename I>
    bool isDirichlet(const I & intersection,
                     const Dune::FieldVector < typename I::ctype, I::dimension - 1 > & coord) const
    {
        std::vector<PorousBoundaryCondition::Type> bctype = prm_.bctype(
                    intersection, coord);

        return (bctype[3] == PorousBoundaryCondition::PressureDirichlet);
    }
private:
    //--------------------- Definition of private variables of constraint class ---------------------
    const PRM & prm_;
};


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Class
// Name:         PorousFunctionAdapterBase
// Description:  Defines adapter functions for parameter class (e.g. set time for all
//               parameters)
// Paramater:      ->  PRM = parameter class (here: PorousDefaultParameters)
//                 ->  rangeDim = dimension range
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename PRM, int rangeDim>
class PorousFunctionAdapterBase: public Dune::PDELab::GridFunctionBase <
    Dune::PDELab::GridFunctionTraits<typename PRM::Traits::GridView,
    typename PRM::Traits::RangeField, rangeDim,
    Dune::FieldVector<typename PRM::Traits::RangeField,
    rangeDim> >,
    PorousFunctionAdapterBase<PRM, rangeDim> >
{
public:
    //------------------------- Defines Traits from gridfunctionspace traits -------------------------
    typedef Dune::PDELab::GridFunctionTraits <
    typename PRM::Traits::GridView,
             typename PRM::Traits::RangeField, rangeDim,
             Dune::FieldVector<typename PRM::Traits::RangeField, rangeDim> > Traits;

    //------------------------------ Constructor of adapter base class ------------------------------
    PorousFunctionAdapterBase(PRM& prm) :
        _prm(prm)
    {
    }
    //------------------------ Sets up adapter functions for parameter class ------------------------
    // sets time for all parameters
    void setTime(double time)
    {
        _prm.setTime(time);
    }

    // returns parameter object
    const PRM& parameters() const
    {
        return _prm;
    }

    // Access to underlying grid view
    const typename Traits::GridViewType& getGridView() const
    {
        return _prm.gridView();
    }

private:
    //----------------------- Definition of private variables of adapter class -----------------------
    PRM& _prm;      // parameter object
//-be
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Class
// Name:         PorousDisplacementFunctionAdapter
// Description:  Adapter extracts displacement Dirichlet boundary conditions from
//               parameter class
// Paramater:      ->  PRM = parameter class (here: PorousDefaultParameters)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename PRM>
class PorousDisplacementFunctionAdapter: public PorousFunctionAdapterBase <
    PRM, PRM::Traits::dimDomain >
{

    //------------------------- Define base class - PorousFunctionAdapterBase -------------------------
    typedef PorousFunctionAdapterBase<PRM, PRM::Traits::dimDomain> Base;
    using Base::parameters;

public:
    //-------------------------------- Definition of public typedefs --------------------------------
    typedef typename Base::Traits Traits;       // Defines name of Traits of base class

    //! Constructor
    PorousDisplacementFunctionAdapter(PRM& prm) :
        Base(prm)
    {
    }

    //--------------------- Constructor of PorousPressureFunctionAdapter class ----------------------
    void evaluate(const typename Traits::ElementType& e,
                  const typename Traits::DomainType& x,
                  typename Traits::RangeType& y) const
    {
        y = parameters().g(e, x);
    }
//-be
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Class
// Name:         PorousPressureFunctionAdapter
// Description:  Adapter extracts Pressure Dirichlet boundary conditions from
//               parameter class
// Paramater:      ->  PRM = parameter class (here: PorousDefaultParameters)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename PRM>
class PorousPressureFunctionAdapter: public PorousFunctionAdapterBase <
    PRM, PRM::Traits::dimDomain >
{

    //------------------------ Define base class - PorousFunctionAdapterBase -------------------------
    typedef PorousFunctionAdapterBase<PRM, PRM::Traits::dimDomain> Base;

    using Base::parameters;

public:
    //-------------------------------- Definition of public typedefs --------------------------------
    typedef typename Base::Traits Traits;

    //--------------------- Constructor of PorousPressureFunctionAdapter class ----------------------
    PorousPressureFunctionAdapter(PRM& prm) :
        Base(prm)
    {
    }

    //---------------------------- Evaluates dirichlet boundary condition ----------------------------
    void evaluate(const typename Traits::ElementType& e,
                  const typename Traits::DomainType& x,
                  typename Traits::RangeType& y) const
    {
        y = parameters().g(e, x);
    }
//-be
};

}// end namespace PDELab
}// end namespace Dune

#endif
