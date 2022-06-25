//||===========================================================================================||
//||    Author:       Patrick Schmidt                                                          ||
//||    Date:         23.08.2016                                                               ||
//||    Name:         parameter_fluid.hh                                                       ||
//||    Description:  Gives a class in order to define all necessary parameters to run a       ||
//||                  fracture fluid simulation; Functions are defined to change variables with||
//||                  space and time; constraint functions are also implemented                ||
//||===========================================================================================||

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//                Copied from solid parameters, needs to be changed to suit fluid parameters
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#ifndef IMPLEMENTATION_PARAMETER_PARAMETER_FLUID_HH_
#define IMPLEMENTATION_PARAMETER_PARAMETER_FLUID_HH_

#include <dune/common/parametertree.hh>
#include <dune/pdelab/common/function.hh>
#include <dune/pdelab/constraints/common/constraintsparameters.hh>

namespace Dune
{
namespace PDELab
{
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Structure
// Name:         FluidBoundaryCondition
// Description:  Gives int flags for different types of boundary conditions
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
struct FluidBoundaryCondition
{
    enum Type
    {
        DoNothing = 0, PressureDirichlet = 1, FluxNeumann = 2
    };
};


//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Structure
// Name:         FluidParameterTraits
// Description:  Defines Traits for parameter class
// Paramater:      ->  GV = Gridview
//                 ->  RF = Rangefield
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename GV, typename RF>
struct FluidParameterTraits
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
    typedef Dune::FieldVector<RF, 1> PressureRange;             // pressure range type
    typedef FluidBoundaryCondition BoundaryCondition;           // boundary type value
    typedef typename GV::Traits::template Codim <
        0 >::Entity Element;                                    // boundary type value
    typedef typename GV::Intersection Intersection;             // grid intersection type
//-be
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Class
// Name:         FluidDefaultParameters
// Description:  Defines parameter class which includes parameters and boundary conditions of
//               fluid fracture problem
// Paramater:      ->  GV = Gridview
//                 ->  RF = The range field type of the solid/Fluid solution
//                 ->  F = External force term function (vector-valued)
//                 ->  B = Boundary type function returning int flag for an element
//                 ->  D = Dirichlet pressure function
//                 ->  J = Neumann stress boundary function (vector- or scalar-valued
//                           - scalar magnitude in normal direction)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename GV, typename RF, typename F, typename B, typename D,
         typename J, bool Fluid = false, bool tensor = false>
class FluidDefaultParameters
{
public:
    static const bool assemble_Fluid = Fluid;

    //-------------------------------------- Traits Definition --------------------------------------
    typedef FluidParameterTraits<GV, RF> Traits; // Defines name of paramter traits (structure above)

    //------------------------------------ Constructor Definition ------------------------------------
    FluidDefaultParameters(const Dune::ParameterTree& config,
                           const Dune::ParameterTree& solver, F& f, B& b, D& d, J& j) :
        _Di(config.get<double>("Di")), _DiF(config.get<double>("DiF")), _f(f), _b(b), _d(d), _j(j)
    {
    }

    FluidDefaultParameters(const RF& E, const RF& gammaw, const RF& Kx,
                           const RF& Ky, const RF& Kfl, const RF& Kgr, const RF& v,
                           const RF& por, const RF& theta, F& f, B& b, D& d, J& j) :
        _Di(Di), _DiF(DiF), _f(f), _b(b), _d(d), _j(j)
    {
    }

    //---------------------------------- Template member functions ----------------------------------
    // Gives back external pressure of fluid fracture at local x
    template<typename EG>       // EG = Element Geometry
    typename Traits::PressureRange f(const EG& e,
                                     const typename Traits::Domain& x) const
    {
        typename F::Traits::RangeType fvalue;

        return evaluatePressureGriDiFunction(_f, e.entity(), x);
    }

    // defines boundary condition on local level of intersection (e.g. element boundary)
    template<typename IG>       // Intersection geometry
    typename Traits::BoundaryCondition::Type bctypeFL(const IG& is,
            const typename Traits::IntersectionDomain& x) const
    {
        typename Traits::BoundaryCondition::Type y;
        _b.evaluate(is, x, y);

        return y;
    }

    //--------------------------------------- Solid Parameters ---------------------------------------
    // Calculates Youngs Modulus value for local coordinates of element
    template<typename EG>       // Element Geometry
    typename Traits::RangeField Di(const EG& eg,
                                   const typename Traits::Domain& x) const
    {
        return _Di;
    }

    // Calculates Youngs Modulus value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField Di(const IG& ig,
                                   const typename Traits::IntersectionDomain& x) const
    {
        return _Di;
    }


    template<typename EG>       // Element Geometry
    typename Traits::RangeField DiF(const EG& eg,
                                    const typename Traits::Domain& x) const
    {
        return _DiF;
    }

    // Calculates Youngs Modulus value for local coordinates of element intersection
    template<typename IG>       // Intersection Geometry
    typename Traits::RangeField DiF(const IG& ig,
                                    const typename Traits::IntersectionDomain& x) const
    {
        return _DiF;
    }


    //------------------------------ Evaluation of boundary conditions ------------------------------
    // Dirichlet pressure boundary condition value from local intersection coordinate
    template<typename EG>       // Element Geometry
    typename Traits::PressureRange g(const EG& e,
                                     const typename Traits::Domain& x) const
    {
        typename D::Traits::RangeType y;
        _d.evaluate(e, x, y);

        return y;
    }

    // Dirichlet pressure boundary condition value from local intersection coordinate
    template<typename IG>       // Intersection Geometry
    typename Traits::PressureRange
    DUNE_DEPRECATED_MSG("Deprecated in DUNE-PDELab 2.4, use entity-based version instead!")
    d(const IG& ig, const typename Traits::IntersectionDomain& x) const
    {
        auto e = ig.inside();
        typename D::Traits::RangeType y;
        _d.evaluate(e, ig.geometryInInside().global(x), y);

        return y;
    }

    // Neumann boundary condition (pressure) - version for scalar function
    template<typename IG>
    typename std::enable_if <
    J::Traits::dimRange == 1 && (GV::dimension > 1)
    && AlwaysTrue<IG>::value, // required to force lazy evaluation
    typename Traits::PressureRange >::type j(const IG& ig,
            const typename Traits::IntersectionDomain& x,
            typename Traits::Domain normal) const
    {
        typename J::Traits::RangeType r;
        auto e = ig.inside();
        _j.evaluate(e, ig.geometryInInside().global(x), r);
        normal *= r;
        return normal;
    }

    // Neumann boundary condition (pressure) - version for vector-valued function
    template<typename IG>
    typename std::enable_if <
    J::Traits::dimRange == GV::dimension
    && AlwaysTrue<IG>::value, // required to force lazy evaluation
    typename Traits::PressureRange >::type j(const IG& ig,
            const typename Traits::IntersectionDomain& x,
            const typename Traits::Domain& normal) const
    {
        auto e = ig.inside();
        typename J::Traits::RangeType y;
        _j.evaluate(e, ig.geometryInInside().global(x), y);
        return y;
    }

    // Pressure source term
    template<typename EG>       // Element Geometry
    typename Traits::RangeField g2(const EG& e,
                                   const typename Traits::Domain& x) const
    {
        typename D::Traits::RangeType y;
        _d.evaluate(e, x, y);

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
    const RF _Di;        // Diffusion
    const RF _DiF;        // Diffusion
    F& _f;              // External forces
    B& _b;              // Boundary type function
    D& _d;              // Dirichlet Pressure function
    J& _j;              // Neumann boundary condition
//-be
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template class
// Name:         FluidPressureDirichletConstraints
// Description:  Defines whether constrained is applied on DoF
// Paramater:      ->  PRM = Parameter class (here: FluidDefaultParameters)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename PRM>
class FluidPressureDirichletConstraints : public Dune::PDELab::DirichletConstraintsParameters
{
public:

    //------------------------------- Constructor for constraint class -------------------------------
    FluidPressureDirichletConstraints(const PRM & _prm) :
        prm_(_prm)
    {
    }

    //-------------------- checks for Dirichlet boundary condition - returns bool --------------------
    template<typename IG>
    bool isDirichlet(const IG & intersection,
                     const Dune::FieldVector < typename IG::ctype, IG::dimension - 1 > & coord) const
    {
        FluidBoundaryCondition::Type bctype = prm_.bctypeFL(intersection,
                                              coord);

        return (bctype == FluidBoundaryCondition::PressureDirichlet);
    }
private:
    //--------------------- Definition of private variables of constraint class ---------------------
    const PRM & prm_;       // parameter object
//-be
};

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Class
// Name:         FluiDiFunctionAdapterBase
// Description:  Defines adapter functions for parameter class (e.g. set time for all
//               parameters)
// Paramater:      ->  PRM = parameter class (here: FluidDefaultParameters)
//                 ->  rangeDim = dimension range
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename PRM, int rangeDim>
class FluidFunctionAdapterBase : public Dune::PDELab::GridFunctionBase <
    Dune::PDELab::GridFunctionTraits<typename PRM::Traits::GridView,
    typename PRM::Traits::RangeField, rangeDim,
    Dune::FieldVector<typename PRM::Traits::RangeField,
    rangeDim>>, FluidFunctionAdapterBase<PRM, rangeDim> >
{
public:
    //------------------------- Defines Traits from griDiFunctionspace traits -------------------------
    typedef Dune::PDELab::GridFunctionTraits <
    typename PRM::Traits::GridView,
             typename PRM::Traits::RangeField, rangeDim,
             Dune::FieldVector<typename PRM::Traits::RangeField, rangeDim> > Traits;

    //------------------------------ Constructor of adapter base class ------------------------------
    FluidFunctionAdapterBase(PRM& prm) :
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
// Name:         FluidPressureFunctionAdapter
// Description:  Adapter extracts Pressure Dirichlet boundary conditions from
//               parameter class
// Paramater:      ->  PRM = parameter class (here: FluidDefaultParameters)
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
template<typename PRM>
class FluidPressureFunctionAdapter : public FluidFunctionAdapterBase<PRM,
    PRM::Traits::dimDomain>
{
    //------------------------- Define base class - FluiDiFunctionAdapterBase -------------------------
    typedef FluidFunctionAdapterBase<PRM, PRM::Traits::dimDomain> Base;     // Defines name of function adapter base
    using Base::parameters;                                                 // uses parameters of base class

public:
    //-------------------------------- Definition of public typedefs --------------------------------
    typedef typename Base::Traits Traits;       // Defines name of Traits of base class

    //---------------------- Constructor of FluidPressureFunctionAdapter class ----------------------
    FluidPressureFunctionAdapter(PRM& prm) :
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
}
}
#endif
