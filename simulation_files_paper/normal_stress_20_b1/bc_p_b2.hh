#ifndef CG_POROUS_INITIAL_HH
#define CG_POROUS_INITIAL_HH

#define APRESSURE 5.0e6
#define VPRESSURE 4.0e6
#define AN 100.0e6
#define VFAC 1.0
/** \brief Boundary conditions for Backward-Facing Step.
 */


// constraints parameter class for selecting boundary condition type of Porous matrix
class BoundaryTypePorous2D
{
private:
    double lx;
    double ly;
    double time;
    const std::vector<int> boundaryId;

public:
    typedef Dune::PDELab::PorousBoundaryCondition BC;

    struct Traits
    {
        typedef BC::Type RangeType;
    };

    BoundaryTypePorous2D(const std::vector<int> boundaryId_)
        : boundaryId(boundaryId_)
    {
    }

    template<typename I>
    inline void evaluate(const I & intersection,
                         const Dune::FieldVector < typename I::ctype, I::dimension - 1 > & coord,
                         std::vector<BC::Type>& y) const
    {
        Dune::FieldVector<double, 2> xG =
            intersection.geometry().global(coord);

        if (xG[0] < 1.e-9 && xG[1] < 1e-9)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DisplacementDirichlet;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xG[0] < 1.e-7)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xG[1] > ly - 1.e-9)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::StressNeumann;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xG[1] < 1.e-9)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DisplacementDirichlet;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xG[0] < 0.003 + 1.e-5 && xG[1] > 0.5 + 2.5e-5 + 1.e7)
        {
            y[0] = BC::StressNeumann;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xG[0] < 0.003 + 1.e-5 && xG[1] < 0.5 + 1.e7 && xG[1] >  0.5- 1.e7)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::StressNeumann;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xG[0] > lx - 1.e-5)
        {
            y[0] = BC::StressNeumann;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        }

        if (xG[0] > 0.003 - 1.e-5 && xG[0] < 0.003 + 1.e-5 && xG[1] > 0.5 - 1.0e-5 && xG[1] < 0.5 + 2.5e-5+1.e-5)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::PressureDirichlet;
        }

        return;
    }
    void setGeometry(double x, double y)
    {
        lx = x;
        ly = y;
    }

    void setTime(double t)
    {
        time = t;
    }
};

template<typename GV, typename RF, int dim>
class DirichletDisplacement: public Dune::PDELab::GridFunctionBase <
    Dune::PDELab::GridFunctionTraits<GV, RF, dim, Dune::FieldVector<RF, dim> >,
    DirichletDisplacement<GV, RF, dim> >
{
private:
    const GV& gv;
    RF time;
    RF ly;
    RF lx;

public:
    typedef Dune::PDELab::GridFunctionTraits<GV, RF, dim, Dune::FieldVector<RF, dim> > Traits;
    typedef Dune::PDELab::GridFunctionBase<Traits,
            DirichletDisplacement<GV, RF, dim> > BaseT;

    typedef typename Traits::DomainType DomainType;
    typedef typename Traits::RangeType RangeType;

    DirichletDisplacement(const GV & gv_) :
        gv(gv_)
    {
    }

    inline void evaluate(const typename Traits::ElementType& e,
                         const typename Traits::DomainType& xlocal,
                         typename Traits::RangeType& y) const
    {

        typedef typename Traits::GridViewType::Grid::ctype ctype;
        Dune::FieldVector<ctype, 2> xG = e.geometry().global(xlocal);
        if (xG[0] < 1.e-9 && xG[1] < 1e-9)
        {
            y[0] = 0.0;
            y[1] = 0.0;
        } else if (xG[0] < 1.e-7)
        {
            y[0] = 0.0;
        } else if (xG[1] > ly - 1.e-9)
        {
            y[0] = 0.0;
            y[1] = 0.0;
        } else if (xG[1] < 1.e-9)
        {
            y[0] = 0.0;
            y[1] = 0.0;
        }


        return;
    }

    void setTime(RF t)
    {
        time = t;
    }

    void setGeometry(RF x, RF y)
    {
        lx = x;
        ly = y;
    }


//! get a reference to the grid view
    inline const GV& getGridView()
    {
        return gv;
    }
};

template<typename GV, typename RF, int dim>
class DirichletPressure: public Dune::PDELab::GridFunctionBase <
    Dune::PDELab::GridFunctionTraits<GV, RF, 1, Dune::FieldVector<RF, 1> >,
    DirichletPressure<GV, RF, 1> >
{
private:
    const GV& gv;
    RF time;
    RF lx;
    RF ly;

public:
    typedef Dune::PDELab::GridFunctionTraits<GV, RF, 1, Dune::FieldVector<RF, 1> > Traits;
    typedef Dune::PDELab::GridFunctionBase<Traits,
            DirichletPressure<GV, RF, 1> > BaseT;

    typedef typename Traits::DomainType DomainType;
    typedef typename Traits::RangeType RangeType;

    DirichletPressure(const GV & gv_) :
        gv(gv_)
    {
    }

    inline void evaluate(const typename Traits::ElementType& e,
                         const typename Traits::DomainType& xlocal,
                         typename Traits::RangeType& y) const
    {
        typedef typename Traits::GridViewType::Grid::ctype ctype;
        Dune::FieldVector<ctype, 2> xg = e.geometry().global(xlocal);

        return;
    }

    template<typename T>
    void setTime(T t)
    {
        time = t;
    }

    void setGeometry(RF x, RF y)
    {
        lx = x;
        ly = y;
    }


    //! get a reference to the grid view
    inline const GV& getGridView()
    {
        return gv;
    }
};

/** \brief Dirichlet velocity function for three dimensional Hagen-Poiseuille flow.
 \tparam GV The underlying grid view.
 \tparam RF The type of the range field.
 * The Hagen-Poiseuille flow is solved in a pipe pointing in x-direction.
 * The cross section in the yz-plane is a circle with midpoint at the origin
 * and with radius 0.5.
 * The inflow velocity is normalized to 1.
 */

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
        if ((time < TIME2) && (time > TIME1)) {
            y = (time - TIME1) / TIME1 * APRESSURE;
        } else if (time >= TIME2) {
            y = APRESSURE + VFAC * VPRESSURE * sin(2.0 * 3.142 / 10.0 * (time - TIME2-5.0));
        } else {
            y = 0;
        }
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

/** \brief Do-nothing boundary function for the Hagen-Poiseuille flow
 \tparam GV The underlying grid view.
 \tparam RF The type of the range field.
 */

// function for defining the flux boundary condition
template<typename GV, typename RF>
class PressureBoundary: public Dune::PDELab::AnalyticGridFunctionBase <
    Dune::PDELab::AnalyticGridFunctionTraits<GV, RF, 1>,
    PressureBoundary<GV, RF> >
{
public:
    typedef Dune::PDELab::AnalyticGridFunctionTraits<GV, RF, 1> Traits;
    typedef Dune::PDELab::AnalyticGridFunctionBase<Traits,
            PressureBoundary<GV, RF> > BaseT;
    double time;
private:
    typedef typename Traits::DomainFieldType DFT;

    const DFT pressure;

public:
    PressureBoundary(const GV& gv, const RF p_) :
        BaseT(gv), pressure(p_)
    {

    }

    inline void evaluateGlobal(const typename Traits::DomainType& x,
                               typename Traits::RangeType& y) const
    {
    }
    template<typename T>
    void setTime(T t)
    {
        time = t;
    }
};

#endif
