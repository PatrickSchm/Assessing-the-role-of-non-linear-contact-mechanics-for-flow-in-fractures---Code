#ifndef CG_POROUS_INITIAL_HH
#define CG_POROUS_INITIAL_HH

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
        Dune::FieldVector<double, 2> xg =
            intersection.geometry().global(coord);

        if (xg[0] < 1.e-9 && xg[1] < 1e-9)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DisplacementDirichlet;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
            // } else if (xg[0] > 4.9 && xg[0] < 5.1 && xg[1] > 12.5 - 1.e-2 && xg[1] < 12.5 + 1.e-2)
        } else if (xg[0] < 1.e-7 && xg[1] > 0.499 && xg[1] < 0.5008)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::PressureDirichlet;
            // } else if (xg[0] > 49.9 && xg[0] < 50.1 && xg[1] > 12.5 - 1.e-2 && xg[1] < 12.5 + 1.e-2)
            // {
            //     y[0] = BC::DoNothing;
            //     y[1] = BC::DoNothing;
            //     y[2] = BC::DoNothing;
            //     y[3] = BC::DoNothing;
        } else if (xg[1] > ly - 1.e-9)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DisplacementDirichlet;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xg[1] < 1.e-9)
        {
            y[0] = BC::DisplacementDirichlet;
            y[1] = BC::DisplacementDirichlet;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xg[0] > lx - 1.e-9)
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        } else if (xg[0] < 1e-10 )
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        }  else
        {
            y[0] = BC::DoNothing;
            y[1] = BC::DoNothing;
            y[2] = BC::DoNothing;
            y[3] = BC::DoNothing;
        }


        // if (xg[0] < 1.e-9 && xg[1] < 1e-9)
        // {
        //     y[0] = BC::DisplacementDirichlet;
        //     y[1] = BC::DisplacementDirichlet;
        //     y[2] = BC::DoNothing;
        //     y[3] = BC::DoNothing;
        // // } else if (xg[0] > 4.9 && xg[0] < 5.1 && xg[1] > 12.5 - 1.e-2 && xg[1] < 12.5 + 1.e-2)
        // } else if (xg[1] > 0.3535 && xg[1] < 0.36 && xg[0] >0.34 && xg[0] < 0.36 )
        // {
        //     y[0] = BC::DoNothing;
        //     y[1] = BC::DoNothing;
        //     y[2] = BC::DoNothing;
        //     y[3] = BC::PressureDirichlet;
        // // } else if (xg[0] > 49.9 && xg[0] < 50.1 && xg[1] > 12.5 - 1.e-2 && xg[1] < 12.5 + 1.e-2)
        // // {
        // //     y[0] = BC::DoNothing;
        // //     y[1] = BC::DoNothing;
        // //     y[2] = BC::DoNothing;
        // //     y[3] = BC::DoNothing;
        // } else if (xg[1] > 0.706 && xg[1] < 1.42 && xg[0] <0.708)
        // {
        //     y[0] = BC::DisplacementDirichlet;
        //     y[1] = BC::DisplacementDirichlet;
        //     y[2] = BC::DoNothing;
        //     y[3] = BC::DoNothing;
        // } else if (xg[0] > 0.706 && xg[0] < 1.42 && xg[1] <0.708)
        // {
        //     y[0] = BC::DisplacementDirichlet;
        //     y[1] = BC::DisplacementDirichlet;
        //     y[2] = BC::DoNothing;
        //     y[3] = BC::DoNothing;
        // } else if (xg[0] > lx - 1.e-9)
        // {
        //     y[0] = BC::DoNothing;
        //     y[1] = BC::DoNothing;
        //     y[2] = BC::DoNothing;
        //     y[3] = BC::DoNothing;
        // } else if (xg[0] < 1e-10 )
        // {
        //     y[0] = BC::DoNothing;
        //     y[1] = BC::DoNothing;
        //     y[2] = BC::DoNothing;
        //     y[3] = BC::DoNothing;
        // }  else
        // {
        //     y[0] = BC::DoNothing;
        //     y[1] = BC::DoNothing;
        //     y[2] = BC::DoNothing;
        //     y[3] = BC::DoNothing;
        // }



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
        Dune::FieldVector<ctype, 2> xg = e.geometry().global(xlocal);

        // std::cout << e.type() << std::endl;
        // if (e.geometry().boundary()) {
        //     int idx = e.geometry().intersection().boundarySegmentIndex();
        //     int tag = boundaryId[idx];

        // if (xg[0] < 1e-6)
        // {
        //     y[0] = 0.0;
        //     y[1] = 0.0;
        //     y[2] = 0.0;
        //     y[3] = 0.0;
        // } else if (xg[0] > lx - 1.e-9)
        // {
        //     y[0] = 0.0;
        //     y[1] = -1.0;
        //     y[2] = 0.0;
        //     y[3] = 0.0;
        // } else
        // {
        //     y[0] = -0.0;
        //     y[1] = -0.0;
        // }

        // if (xg[0] < 1e-6 && xg[1] < 1e-6)
        // {
        //     y[0] = 0.0;
        //     y[1] = 0.0;
        // }
        if (xg[1] < 1.e-9)
        {
            y[0] = 0.0;
            if (time < 0.1) {
                // y[1] = time / 0.1 * 0.0001;
                y[1] =  0.0000;
            } else {
                y[1] = 0.0000;
            }
        } else if (xg[1] > ly - 1.e-6)
        {
            // if (time < 0.4) {
            //     // y[1] = -time / 0.1 * 0.0001;
            //     // std::cout << -0.001*sin(time/0.001*2*3.142) << std::endl;
            //     y[1] = -time  * 10e-6; // benchmark displacement controlled fracture probe
            // } else {
            //     y[1] = -3e-6 + (time-0.3) * 10e-6; // benchmark displacement controlled fracture probe
            // }
            y[1] = 0.0;
            y[0] = 0.0;
        } else if (xg[0] > lx - 1.0e-6)
        {
            y[0] = 0.0;
            y[1] = 0.0;
        } else if (xg[0] < 1e-6 )
        {
            y[0] = 0.000;
            y[1] = -0.000;
        } else
        {
            y[0] = -0.0;
            y[1] = -0.0;
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



        if (xg[0] > 4.9 && xg[0] < 5.1 && xg[1] > 12.5 - 1.e-2 && xg[1] < 12.5 + 1.e-2)
        {
            y = 1.e7;

        } else if (xg[0] > 49.9 && xg[0] < 50.1 && xg[1] > 12.5 - 1.e-2 && xg[1] < 12.5 + 1.e-2)
        {
            y = 1.e7;
        }

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


        if (x[0] > 4.9 && x[0] < 5.1 && x[1] > 12.5 - 1.e-2 && x[1] < 12.5 + 1.e-2)
        {
            // y = 0.75e6;

        } else if (x[0] > 49.9 && x[0] < 50.1 && x[1] > 12.5 - 1.e-2 && x[1] < 12.5 + 1.e-2)
        {
        }
        if (time < 3300.) {

            if (time < 2800)
                y = time / 2800. * 5.0e6;
            else
                y = 5.0e6;

        } else{
            y = 5.0e6 + 2.0 * 3.14159265359 / 20.0 * 7.5e5 * sin(time - 3300.0);
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
        if (time >= 0.1) {
            y = 0;
        } else {
            y = 20000000;
        }
        y = 1.e7;
    }
    template<typename T>
    void setTime(T t)
    {
        time = t;
    }
};

#endif