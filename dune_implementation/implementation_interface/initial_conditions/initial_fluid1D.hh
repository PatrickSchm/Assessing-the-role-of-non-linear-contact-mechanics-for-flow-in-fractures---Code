#ifndef CG_POROUS_INITIAL_FLUID_HH
#define CG_POROUS_INITIAL_FLUID_HH


class BCTypeParamFL1D
{
private:
    double height;
    double width;
    double time;

public:
    typedef Dune::PDELab::FluidBoundaryCondition BC;

    struct Traits
    {
        typedef BC::Type RangeType;
    };

    BCTypeParamFL1D()
    {
    }

    template<typename I>
    inline void evaluate(const I & intersection,
                         const Dune::FieldVector < typename I::ctype, I::dimension - 1 > & xlocal,
                         BC::Type& y) const
    {
        Dune::FieldVector < typename I::ctype, I::dimension + 1 > xg =
            intersection.geometry().global(xlocal);

        // if (xg[0] > 5.e-1) {
        //     y = BC::DoNothing;
        //     // y = BC::DoNothing;
        // }if (xg[0] > 99.5-5.e-7) {
        //     // y = BC::DoNothing;
        // }   else {
        // y = BC::PressureDirichlet;
        // y = BC::DoNothing;
        // }
        if (xg[0] > 25.0 - 5.e-7 && xg[0] < 25.0 + 5.e-7) {
            y = BC::FluxNeumann;
        }
        return;
    }
    void setGeometry(double x, double y)
    {
        height = y;
        width = x;
    }

    void setTime(double t)
    {
        time = t;
    }
};

template<typename GV, typename RF, int dim>
class PressureDirichletFluid: public Dune::PDELab::GridFunctionBase <
    Dune::PDELab::GridFunctionTraits<GV, RF, 1, Dune::FieldVector<RF, 1> >,
    PressureDirichletFluid<GV, RF, 1> >
{
private:
    const GV& gv;
    RF time;
    RF height;
    RF width;


public:
    typedef Dune::PDELab::GridFunctionTraits<GV, RF, dim, Dune::FieldVector<RF, 1> > Traits;
    typedef Dune::PDELab::GridFunctionBase<Traits,
            PressureDirichletFluid<GV, RF, dim> > BaseT;

    typedef typename Traits::DomainType DomainType;
    typedef Dune::PDELab::FluidBoundaryCondition BC;

    PressureDirichletFluid(const GV & gv_) :
        gv(gv_)
    {
    }

    inline void evaluate(const typename Traits::ElementType& e,
                         const typename Traits::DomainType& xlocal,
                         typename Traits::RangeType& y) const
    {
        typedef typename Traits::GridViewType::Grid::ctype ctype;
        Dune::FieldVector<ctype, 2> xg = e.geometry().global(xlocal);
        double at = 0.1;

        // if (xg[0] < 5.e-1) {
        y = 20000.0;
        // } else {
        //     y = 0.0;
        // }

        return;
    }

    template<typename T>
    void setTime(T t)
    {
        time = t;
    }


    void setGeometry(RF x, RF y)
    {
        height = y;
        width = x;
    }
    //! get a reference to the grid view
    inline const GV& getGridView()
    {
        return gv;
    }
};


template<typename GV, typename RF, int dim>
class InitialPressureFluidFracture: public Dune::PDELab::GridFunctionBase <
    Dune::PDELab::GridFunctionTraits<GV, RF, 1, Dune::FieldVector<RF, 1> >,
    PressureDirichletFluid<GV, RF, 1> >
{
private:
    const GV& gv;
    RF time;
    RF height;
    RF width;


public:
    typedef Dune::PDELab::GridFunctionTraits<GV, RF, 1, Dune::FieldVector<RF, 1> > Traits;
    typedef Dune::PDELab::GridFunctionBase<Traits,
            PressureDirichletFluid<GV, RF, 1> > BaseT;

    typedef typename Traits::DomainType DomainType;
    typedef Dune::PDELab::FluidBoundaryCondition BC;

    InitialPressureFluidFracture(const GV & gv_) :
        gv(gv_)
    {
    }

    inline void evaluate(const typename Traits::ElementType& e,
                         const typename Traits::DomainType& xlocal,
                         typename Traits::RangeType& y) const
    {
        typedef typename Traits::GridViewType::Grid::ctype ctype;
        Dune::FieldVector<ctype, 2> xg = e.geometry().global(xlocal);
        double at = 0.1;

        // if (xg[0] < 5.e-1) {
        y = 20000.0;
        // } else {
        //     y = 0.0;
        // }

        return;
    }

    template<typename T>
    void setTime(T t)
    {
        time = t;
    }


    void setGeometry(RF x, RF y)
    {
        height = y;
        width = x;
    }
    //! get a reference to the grid view
    inline const GV& getGridView()
    {
        return gv;
    }
};

template<typename GV, typename RF, std::size_t dim_range>
class ZeroVectorFunction: public Dune::PDELab::AnalyticGridFunctionBase <
    Dune::PDELab::AnalyticGridFunctionTraits<GV, RF, dim_range>,
    ZeroVectorFunction<GV, RF, dim_range> >,
    public Dune::PDELab::InstationaryFunctionDefaults
{
private:
    RF time;
public:
    typedef Dune::PDELab::AnalyticGridFunctionTraits<GV, RF, dim_range> Traits;
    typedef Dune::PDELab::AnalyticGridFunctionBase<Traits, ZeroVectorFunction> BaseT;

    typedef typename Traits::DomainType DomainType;

    typedef typename Traits::RangeType RangeType;
    ZeroVectorFunction(const GV & gv) :
        BaseT(gv)
    {
    }

    inline void evaluateGlobal(const DomainType & x, RangeType & y) const
    {
        y = 0;
    }

    template<typename T>
    void setTime(T t)
    {
        time = t;
    }
};

template<typename GV, typename RF>
class ZeroScalarFunction: public ZeroVectorFunction<GV, RF, 1>
{
public:

    ZeroScalarFunction(const GV & gv) :
        ZeroVectorFunction<GV, RF, 1>(gv)
    {
    }

};

#endif
