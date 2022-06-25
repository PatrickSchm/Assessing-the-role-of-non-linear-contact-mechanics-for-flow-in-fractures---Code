#ifndef CG_POROUS_INITIAL_HH
#define CG_POROUS_INITIAL_HH

/** \brief Boundary conditions for Backward-Facing Step.

 */

// constraints parameter class for selecting boundary condition type of Porous matrix
class BoundaryTypePorous3D
{
private:
    double lx;
    double ly;
    double lz;
    double time;

public:
    typedef Dune::PDELab::PorousBoundaryCondition BC;

    struct Traits
    {
        typedef BC::Type RangeType;
    };

    BoundaryTypePorous3D()
    {
    }

    template<typename I>
    inline void evaluate(const I & intersection,
                         const Dune::FieldVector < typename I::ctype, I::dimension - 1 > & coord,
                         std::vector<BC::Type>& y) const
    {
        const int dim = I::dimension;
        Dune::FieldVector<typename I::ctype, dim> xg =
            intersection.geometry().global(coord);

        if (xg[0] < 1e-6 && xg[1] < 1e-6 && xg[2] < 1e-6)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DisplacementDirichlet;
            y[2] = BC::DisplacementDirichlet;
            y[3] = BC::DoNothing;
        } else if (xg[2] < 1e-6)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DoNothing;
            y[2] = BC::DisplacementDirichlet;
            y[3] = BC::DoNothing;
        } else if (xg[1] < 1e-6)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DisplacementDirichlet;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xg[1] > ly - 1e-6)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DisplacementDirichlet;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xg[0] > -1e-6)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xg[0] < lx - 1e-6)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xg[2] > lz - 1.e-6)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DoNothing;
            y[2] = BC::DisplacementDirichlet;
            y[3] = BC::DoNothing;
        }
        // if (fabs(sqrt(pow(xg[0]-50,2)+pow(xg[1]-50,2))) < 1.01)
        // {
        //     y[0] = BC::DoNothing;
        //     y[1] = BC::DoNothing;
        //     y[2] = BC::DoNothing;
        //     y[3] = BC::PressureDirichlet;
        // }
        if (xg[0] > -1.e-6 && xg[2] > 499.999 - 1.e-5 && xg[2] < 500.001 + 1.e-5)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::PressureDirichlet;
        }
    }

    void setGeometry(double x, double y, double z)
    {
        lx = x;
        ly = y;
        lz = z;
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
    RF lz;
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
        Dune::FieldVector<ctype, dim> xg = e.geometry().global(xlocal);

        if (xg[0] < 1e-6 && xg[1] < 1e-6 && xg[2] < 1e-6)
        {
            y[0] = 0.0;
            y[1] = 0.0;
            y[2] = 0.0;
        } else if (xg[2] < 1e-6)
        {
            y[0] = 0.0;
            y[1] = 0.0;
            y[2] = 0.0;
        } else if (xg[1] < 1e-6)
        {
            y[0] = 0.0;
            y[1] = 0.0;
        } else if (xg[1] > ly - 1e-6)
        {
            y[0] = 0.0;
            y[1] = 0.0;
        } else if (xg[0] > 1e-6)
        {
            y[0] = 0.0;
            y[1] = 0.0;
        } else if (xg[0] < lx + 1e-6)
        {
            y[0] = 0.0;
            y[1] = 0.0;
        }

        if (xg[2] > lz - 1.e-6)
        {
            y[2] = 0;
        }
        // if (fabs(sqrt(pow(xg[0]-50,2)+pow(xg[1]-50,2))) < 1.01)
        // {
        //     y[0] = 0.0;
        //     y[1] = 0.0;
        // }
        return;
    }

    void setTime(RF t)
    {
        time = t;
    }

    void setGeometry(RF x, RF y, RF z)
    {
        lx = x;
        ly = y;
        lz = z;
    }
//! get a reference to the grid view
    inline const GV& getGridView()
    {
        return gv;
    }
};

template<typename GV, typename RF, int dim>
class PressureDirichlet: public Dune::PDELab::GridFunctionBase <
    Dune::PDELab::GridFunctionTraits<GV, RF, 1, Dune::FieldVector<RF, 1> >,
    PressureDirichlet<GV, RF, 1> >
{
private:
    const GV& gv;
    RF time;
    RF lx;
    RF ly;
    RF lz;

public:
    typedef Dune::PDELab::GridFunctionTraits<GV, RF, 1, Dune::FieldVector<RF, 1> > Traits;
    typedef Dune::PDELab::GridFunctionBase<Traits,
            PressureDirichlet<GV, RF, 1> > BaseT;

    typedef typename Traits::DomainType DomainType;
    typedef typename Traits::RangeType RangeType;

    PressureDirichlet(const GV & gv_) :
        gv(gv_)
    {
    }

    inline void evaluate(const typename Traits::ElementType& e,
                         const typename Traits::DomainType& xlocal,
                         typename Traits::RangeType& y) const
    {
        typedef typename Traits::GridViewType::Grid::ctype ctype;
        Dune::FieldVector<ctype, 3> xg = e.geometry().global(xlocal);


        y = 20000;
        // if (sqrt(pow(xg[0], 2) + pow(xg[1], 2)) < 1.01)
        // {
        //     y = 20000.0;
        // }

        return;
    }

    template<typename T>
    void setTime(T t)
    {
        time = t;
    }

    void setGeometry(RF x, RF y, RF z)
    {
        lx = x;
        ly = y;
        lz = z;
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

    inline void evaluateGlobal(const DomainType & xg, RangeType & y) const
    {

        // double ct = 1e-6;

        // if (time - ct <= 1.e-8)
        // {
        //     y = 0.0;
        // } else
        // {
        //     y = 0;
        // }
        y = 20000;
        std::cout << sqrt(pow(xg[0], 2) + pow(xg[1], 2)) << std::endl;

        if (fabs(sqrt(pow(xg[0] - 50, 2) + pow(xg[1] - 50, 2))) < 1.01)
        {
            y = 20000.0;
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

private:
    typedef typename Traits::DomainFieldType DFT;

    const DFT pressure;

public:
    PressureBoundary(const GV& gv, const RF p_) :
        BaseT(gv), pressure(p_)
    {

    }

    inline void evaluateGlobal(const typename Traits::DomainType& xg,
                               typename Traits::RangeType& y) const
    {
        y = 0.0;
        if (fabs(sqrt(pow(xg[0] - 50, 2) + pow(xg[1] - 50, 2))) < 1.01)
        {
            y = 20000.0;
        }
    }
};

#endif
