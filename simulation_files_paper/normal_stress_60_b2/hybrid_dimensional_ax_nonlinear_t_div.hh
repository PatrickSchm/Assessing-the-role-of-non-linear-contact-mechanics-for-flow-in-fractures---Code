#include<dune/geometry/referenceelements.hh>
#include<dune/geometry/quadraturerules.hh>
#include<dune/pdelab/common/geometrywrapper.hh>
#include<dune/pdelab/localoperator/defaultimp.hh>
#include<dune/pdelab/localoperator/pattern.hh>
#include<dune/pdelab/localoperator/flags.hh>
#include<dune/pdelab/localoperator/idefault.hh>

/** a local operator for solving the equation
 *
 *   - \Delta u + a*u = f   in \Omega
 *                  u = g   on \Gamma_D\subseteq\partial\Omega
 *  -\nabla u \cdot n = j   on \Gamma_N = \partial\Omega\setminus\Gamma_D
 *
 * with conforming finite elements on all types of grids in any dimension
 *
 * \tparam BCType parameter class indicating the type of boundary condition
 */
template<class BCType, typename P>
class HDT_AX_NONLIN:
    public Dune::PDELab::FullVolumePattern,
    public Dune::PDELab::FullZeroThicknessPattern,
    public Dune::PDELab::LocalOperatorDefaultFlags,
    public Dune::PDELab::InstationaryLocalOperatorDefaultMethods<double>
{
public:
    using BC = Dune::PDELab::PorousBoundaryCondition;

    // pattern assembly flags
    enum
    {
        doPatternVolume = true
    };
    enum
    {
        doPatternZeroThickness = true
    };
    // residual assembly flags
    enum
    {
        doAlphaVolume = true
    };

    enum
    {
        doZeroThickness = true
    };

    using PhysicalParameters = P;

    HDT_AX_NONLIN(const BCType& bctype_, // boundary cond.type
                  PhysicalParameters & p_, unsigned int intorder_ = 2) :
        bctype(bctype_), p(p_), intorder(intorder_)
    {
    }


// volume integral depending on test and ansatz functions
// volume integral depending on test and ansatz functions
    template<typename EG, typename LFSU, typename X, typename LFSV, typename R>
    void alpha_volume(const EG& eg, const LFSU& lfsu, const X& x,
                      const LFSV& lfsv, R& r, int iMat) const
    {
        // assume Galerkin: lfsu == lfsv
        // This yields more efficient code since the local functionspace only
        // needs to be evaluated once, but would be incorrect for a finite volume
        // method

        // dimensions
        const int dim = 2;
        const int dimw = 2;

        using namespace Dune::TypeTree::Indices;
        using UGLFSU = Dune::TypeTree::Child<LFSU, Dune::TypeTree::Indices::_0>;
        using ULFSU = Dune::TypeTree::Child<UGLFSU, Dune::TypeTree::Indices::_0>;

        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::DomainFieldType DF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeFieldType RF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::JacobianType Jacobian;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeType URange;
        typedef Dune::FieldVector<RF, dimw> Gradient;
        typedef typename UGLFSU::Traits::SizeType size_type;

        // get geometry
        auto geo = eg.geometry();
        auto gt = geo.type();

//        // extract local function spaces
        const auto& ulfsu = child(lfsu, Dune::TypeTree::Indices::_0);
        const unsigned int usize = ulfsu.child(0).size();
        const auto& plfsu = child(lfsu, Dune::TypeTree::Indices::_1);
        const unsigned int psize = plfsu.size();

        // determine quadrature order
        int qorder = 2;

        // extract local function spaces
        // select quadrature rule
        const Dune::QuadratureRule<DF, dim>& rule = Dune::QuadratureRules<DF,
                                             dim>::rule(gt, qorder);


        // loop over quadrature points
        for (typename Dune::QuadratureRule<DF, dim>::const_iterator ip =
                    rule.begin(); ip != rule.end(); ++ip)
        {

            // transform gradients from reference element to real element
            auto jac =
                eg.geometry().jacobianInverseTransposed(ip->position());

            auto k = p.K(eg, ip->position(), iMat - 1);
            const auto ks = p.Kgr(eg, ip->position(), iMat - 1);
            const auto Kf = p.Kfl(eg, ip->position(), iMat - 1);
            const auto phi0 = p.por(eg, ip->position(), iMat - 1);

            // k = (phi0 * (1. / ks - 1. / Kf) + 1. / ks - 1. / k) / \
            //     ((phi0 / k) * (1. / ks - 1. / Kf) + (1. / ks) * (1. / ks - 1. / k));
            RF alpha = 1.0 - k / ks;
            RF M = phi0 / Kf + (alpha - phi0) / ks;


            Dune::FieldVector<DF, dim> xG = eg.geometry().global(
                                                ip->position());
            double rad = xG[0];
            // evaluate basis functions on reference element
            std::vector < URange > phi(usize);
            ulfsu.child(0).finiteElement().localBasis().evaluateFunction(
                ip->position(), phi);
            // evaluate gradient of basis functions on reference element
            std::vector < Jacobian > jsu(usize);
            ulfsu.child(0).finiteElement().localBasis().evaluateJacobian(
                ip->position(), jsu);

            std::vector<Dune::FieldVector<RF, dim> > gradphi(usize);
            for (size_type i = 0; i < usize; i++)
                jac.umv(jsu[i][0], gradphi[i]);

            // compute gradient of u
            Gradient gradux(0.0);
            Gradient graduy(0.0);

            const auto& lfsu_ur = ulfsu.child(0);
            const auto& lfsu_uz = ulfsu.child(1);

            for (size_type i = 0; i < usize; ++i)
                gradux.axpy(x(lfsu_ur, i), gradphi[i]);
            for (size_type i = 0; i < usize; ++i)
                graduy.axpy(x(lfsu_uz, i), gradphi[i]);

            // compute gradient of u
            // evaluate basis functions on reference element
            std::vector < URange > psi(psize);
            plfsu.finiteElement().localBasis().evaluateFunction(ip->position(),
                    psi);

            // compute p at integration point
            RF p = 0.0;

            const auto& lfsu_p = plfsu;
            for (size_t i = 0; i < psize; i++)
                p += x(lfsu_p, i) * psi[i];

            // integrate grad u * grad phi_i + a*u*phi_i - f phi_i
            RF factor = ip->weight()
                        * eg.geometry().integrationElement(ip->position());

            for (size_type i = 0; i < psize; ++i)
            {
                // r.accumulate(plfsu, i,
                //              (
                //                  rad * alpha * 1.0 / M * (gradux[0] * psi[i] + graduy[1] * psi[i]))
                //              * factor);
                // r.accumulate(plfsu, i, rad * (p * psi[i]) * factor);

            }

        }
    }

// volume integral depending on test and ansatz functions
    template<typename GEOS, typename IGS, typename LFSU, typename X, typename LFSV, typename R>
    void alpha_zero_thickness(const GEOS & geos, const IGS & zt_element, const LFSU & lfsu, const X & x,
                              const LFSV & lfsv, R & r, std::vector<int> indices) const
    {
// -----------------------------------------------------
        auto eg = std::get<0>(geos);
        auto ig = std::get<1>(geos);

        // assume Galerkin: lfsu == lfsv
        // This yields more efficient code since the local functionspace only
        // needs to be evaluated once, but would be incorrect for a finite volume
        // method

        // dimensions
        const int igDim = 1;
        const int egDim = 2;

        using namespace Dune::TypeTree::Indices;
        using UGLFSU = Dune::TypeTree::Child<LFSU, Dune::TypeTree::Indices::_0>;
        using ULFSU = Dune::TypeTree::Child<UGLFSU, Dune::TypeTree::Indices::_0>;

        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::DomainFieldType DF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeFieldType RF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeType URange;
        typedef typename UGLFSU::Traits::SizeType size_type;
        // get geometry
        auto igeo = ig.geometry();
        auto igt = igeo.type();

//        // extract local function spaces
        const auto& ulfsu = child(lfsu, Dune::TypeTree::Indices::_0);

        const auto& plfsu = child(lfsu, Dune::TypeTree::Indices::_1);

        unsigned int psize = plfsu.size();

        // determine quadrature order



        const auto & lfsu_ur = ulfsu.child(0);
        const auto& lfsu_uz = ulfsu.child(1);

        std::vector<double> xpHD(psize, 0);
        xpHD[zt_element.matchTopMap[0]] = (x(plfsu, zt_element.matchTopMap[0]) + x(plfsu, zt_element.matchButtomMap[0])) / 2.0;
        xpHD[zt_element.matchTopMap[1]] = (x(plfsu, zt_element.matchTopMap[1]) + x(plfsu, zt_element.matchButtomMap[1])) / 2.0;

        std::vector<double> xpHDT(psize, 0);
        xpHDT[zt_element.matchTopMap[0]] = (x(plfsu, zt_element.matchTopMap[0]) - (x(plfsu, zt_element.matchButtomMap[0])));
        xpHDT[zt_element.matchTopMap[1]] = (x(plfsu, zt_element.matchTopMap[1]) - (x(plfsu, zt_element.matchButtomMap[1])));

        std::vector<double> xdelta(psize, 0);
        xdelta[zt_element.matchTopMap[0]] = zt_element.topNormal[1] * x(lfsu_uz, zt_element.matchTopMap[0]) + zt_element.buttomNormal[1] * x(lfsu_uz, zt_element.matchButtomMap[0]) + zt_element.topNormal[0] * x(lfsu_ur, zt_element.matchTopMap[0]) + zt_element.buttomNormal[0] * x(lfsu_ur, zt_element.matchButtomMap[0]);
        xdelta[zt_element.matchTopMap[1]] = zt_element.topNormal[1] * x(lfsu_uz, zt_element.matchTopMap[1]) + zt_element.buttomNormal[1] * x(lfsu_uz, zt_element.matchButtomMap[1]) + zt_element.topNormal[0] * x(lfsu_ur, zt_element.matchTopMap[1]) + zt_element.buttomNormal[0] * x(lfsu_ur, zt_element.matchButtomMap[1]);

        Dune::FieldVector<double, egDim> zero_position(0.0);

        // Fracture properties
        double delta_0 = p.Delta_0(eg, zero_position, 0);
        const double eta = p.Eta(eg, zero_position, 0);
        // Fluid identical for fracture and porous matrix
        auto Kf = p.Kfl(eg, zero_position, 1);


        auto gtface = ig.geometryInInside().type();
        int qorder = 2;
        const Dune::QuadratureRule<DF, igDim>& rule = Dune::QuadratureRules<DF,
                                               igDim>::rule(gtface, qorder);

        for (typename Dune::QuadratureRule<DF, igDim>::const_iterator ip =
                    rule.begin(); ip != rule.end(); ++ip)
        {

            Dune::FieldVector<DF, egDim> xG = ig.geometry().global(
                                                  ip->position());
            double rad = xG[0];
            // if (xG[1] < 50) {
            //     delta_0 = p.Delta_0(eg, zero_position, 1);
            // }
            Dune::FieldVector<DF, 2> ipP = ig.geometryInInside().global(
                                               ip->position());
            auto jac = ig.geometry().jacobianInverseTransposed(ip->position());

            auto EFrac = p.EFrac(eg, zero_position, 0);
            auto EFracLin = p.PerTan(eg, zero_position, 0);

            // transform gradients from reference element to real element
            // evaluate basis functions on reference element
            std::vector < URange > phi(psize);
            lfsu_ur.finiteElement().localBasis().evaluateFunction(
                ipP, phi);

            std::vector < URange > psi(psize);
            plfsu.finiteElement().localBasis().evaluateFunction(
                ipP, psi);

            // evaluate gradient of basis functions on reference element

            RF factor = ip->weight()
                        * ig.geometry().integrationElement(ip->position());


            double pHD = 0.0;
            double pHDT = 0.0;
            double delta = 0.0;

            for (size_type i = 0; i < psize; ++i) {

                pHD += xpHD[i] * psi[i];
                pHDT += xpHDT[i] * psi[i];
                delta += xdelta[i] * phi[i];

            }

            for (size_type i = 0; i < 2; ++i)
            {
                int iT = zt_element.matchTopMap[i];
                int iB = zt_element.matchButtomMap[i];

                r.accumulate(plfsu, iT, rad * 1. / 2.  * (delta + delta_0) * (pHD * psi[iT]) * factor );
                r.accumulate(plfsu, iB, rad * 1. / 2.  * (delta + delta_0) * (pHD * psi[iT]) * factor );

                r.accumulate(plfsu, iT, rad * 1. / 2.  * Kf * (delta + delta_0) * psi[iT]* factor );
                r.accumulate(plfsu, iB, rad * 1. / 2.  * Kf * (delta + delta_0) * psi[iT]* factor );
            }
        }
    }



// volume integral depending on test and ansatz functions

// volume integral depending on test and ansatz functions
    template<typename EG, typename LFSU, typename X, typename LFSV, typename MA>
    void jacobian_volume(const EG & eg, const LFSU & lfsu, const X & x,
                         const LFSV & lfsv, MA & mat, int iMat) const
    {

        // assume Galerkin: lfsu == lfsv
        // This yields more efficient code since the local functionspace only
        // needs to be evaluated once, but would be incorrect for a finite volume
        // method

        // dimensions
        const int dim = EG::Geometry::mydimension;
        const int dimw = EG::Geometry::coorddimension;

        using namespace Dune::TypeTree::Indices;
        using UGLFSU = Dune::TypeTree::Child<LFSU, Dune::TypeTree::Indices::_0>;
        using ULFSU = Dune::TypeTree::Child<UGLFSU, Dune::TypeTree::Indices::_0>;

        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::DomainFieldType DF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeFieldType RF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::JacobianType Jacobian;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeType URange;
        typedef Dune::FieldVector<RF, dimw> Gradient;
        typedef typename UGLFSU::Traits::SizeType size_type;

        // get geometry
        auto geo = eg.geometry();
        auto gt = geo.type();

//        // extract local function spaces
        const auto& ulfsu = child(lfsu, Dune::TypeTree::Indices::_0);
        const unsigned int usize = ulfsu.child(0).size();
        const auto& plfsu = child(lfsu, Dune::TypeTree::Indices::_1);
        const unsigned int psize = plfsu.size();

        // determine quadrature order
        int qorder = 2;

        // extract local function spaces
        // select quadrature rule
        const Dune::QuadratureRule<DF, dim>& rule = Dune::QuadratureRules<DF,
                                             dim>::rule(gt, qorder);


        // loop over quadrature points
        for (typename Dune::QuadratureRule<DF, dim>::const_iterator ip =
                    rule.begin(); ip != rule.end(); ++ip)
        {

            // transform gradients from reference element to real element
            const typename EG::Geometry::JacobianInverseTransposed jac =
                eg.geometry().jacobianInverseTransposed(ip->position());

            auto k = p.K(eg, ip->position(), iMat - 1);
            const auto ks = p.Kgr(eg, ip->position(), iMat - 1);
            const auto Kf = p.Kfl(eg, ip->position(), iMat - 1);
            const auto phi0 = p.por(eg, ip->position(), iMat - 1);

            // k = (phi0 * (1. / ks - 1. / Kf) + 1. / ks - 1. / k) / \
            //     ((phi0 / k) * (1. / ks - 1. / Kf) + (1. / ks) * (1. / ks - 1. / k));
            RF alpha = 1.0 - k / ks;
            RF M = phi0 / Kf + (alpha - phi0) / ks;

            Dune::FieldVector<DF, dim> xG = eg.geometry().global(
                                                ip->position());
            double rad = xG[0];
            // evaluate basis functions on reference element
            std::vector < URange > phi(usize);
            ulfsu.child(0).finiteElement().localBasis().evaluateFunction(
                ip->position(), phi);
            // evaluate gradient of basis functions on reference element
            std::vector < Jacobian > jsu(usize);
            ulfsu.child(0).finiteElement().localBasis().evaluateJacobian(
                ip->position(), jsu);

            std::vector<Dune::FieldVector<RF, dim> > gradphi(usize);
            for (size_type i = 0; i < usize; i++)
                jac.umv(jsu[i][0], gradphi[i]);

            // compute gradient of u
            Gradient gradux(0.0);
            Gradient graduy(0.0);

            std::vector < Jacobian > jsv(psize);
            plfsu.finiteElement().localBasis().evaluateJacobian(
                ip->position(), jsv);

            std::vector<Dune::FieldVector<RF, dim> > gradpsi(psize);
            for (size_type i = 0; i < plfsu.size(); i++)
                jac.mv(jsv[i][0], gradpsi[i]);

            Gradient gradp(0.0);
            for (size_type i = 0; i < psize; ++i)
                gradp.axpy(x(plfsu, i), gradpsi[i]);

            const auto& lfsu_ur = ulfsu.child(0);
            const auto& lfsu_uz = ulfsu.child(1);

            for (size_type i = 0; i < usize; ++i)
                gradux.axpy(x(lfsu_ur, i), gradphi[i]);
            for (size_type i = 0; i < usize; ++i)
                graduy.axpy(x(lfsu_uz, i), gradphi[i]);

            // compute gradient of u
            // evaluate basis functions on reference element
            std::vector < URange > psi(psize);
            plfsu.finiteElement().localBasis().evaluateFunction(ip->position(),
                    psi);

            // compute p at integration point
            RF p = 0.0;

            const auto& lfsu_p = plfsu;
            for (size_t i = 0; i < psize; i++)
                p += x(lfsu_p, i) * psi[i];

            // integrate grad u * grad phi_i + a*u*phi_i - f phi_i
            RF factor = ip->weight()
                        * eg.geometry().integrationElement(ip->position());

            for (size_type i = 0; i < psize; ++i)
            {
                for (size_type j = 0; j < usize; ++j)
                {
                    // mat.accumulate(plfsu, i, lfsu_ur, j,
                    //                (
                    //                    rad * alpha * 1.0 / M * (gradphi[j][0] * psi[i]))
                    //                * factor);

                    // mat.accumulate(plfsu, i, lfsu_uz, j,
                    //                (
                    //                    rad * alpha * 1.0 / M * (gradphi[j][1] * psi[i]))
                    //                * factor);

                }
            }

            for (size_type i = 0; i < psize; ++i)
            {
                for (size_type j = 0; j < psize; ++j)
                {
                    // mat.accumulate(plfsu, i, plfsu, j, rad * (psi[i] * psi[j]) * factor);
                }
            }
        }
    }

// volume integral depending on test and ansatz functions
    template<typename GEOS, typename IGS, typename LFSU, typename X, typename LFSV, typename MA>
    void jacobian_zero_thickness(const GEOS & geos, const IGS & zt_element, const LFSU & lfsu, const X & x,
                                 const LFSV & lfsv, MA & mat, std::vector<int> indices) const
    {
// -----------------------------------------------------
        auto eg = std::get<0>(geos);
        auto ig = std::get<1>(geos);

        // assume Galerkin: lfsu == lfsv
        // This yields more efficient code since the local functionspace only
        // needs to be evaluated once, but would be incorrect for a finite volume
        // method

        // dimensions
        const int igDim = 1;
        const int egDim = 2;

        using namespace Dune::TypeTree::Indices;
        using UGLFSU = Dune::TypeTree::Child<LFSU, Dune::TypeTree::Indices::_0>;
        using ULFSU = Dune::TypeTree::Child<UGLFSU, Dune::TypeTree::Indices::_0>;

        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::DomainFieldType DF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeFieldType RF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeType URange;
        typedef typename UGLFSU::Traits::SizeType size_type;
        // get geometry

        auto igeo = ig.geometry();
        auto igt = igeo.type();

//        // extract local function spaces
        const auto& ulfsu = child(lfsu, Dune::TypeTree::Indices::_0);

        const auto& plfsu = child(lfsu, Dune::TypeTree::Indices::_1);
        const auto& plfsv = child(lfsv, Dune::TypeTree::Indices::_1);
        unsigned int psize = plfsu.size();



        const auto& lfsu_ur = ulfsu.child(0);
        const auto& lfsu_uz = ulfsu.child(1);

        std::vector<double> xpHD(psize, 0);
        xpHD[zt_element.matchTopMap[0]] = (x(plfsu, zt_element.matchTopMap[0]) + x(plfsu, zt_element.matchButtomMap[0])) / 2.0;
        xpHD[zt_element.matchTopMap[1]] = (x(plfsu, zt_element.matchTopMap[1]) + x(plfsu, zt_element.matchButtomMap[1])) / 2.0;

        std::vector<double> xpHDT(psize, 0);
        xpHDT[zt_element.matchTopMap[0]] = (x(plfsu, zt_element.matchTopMap[0]) - (x(plfsu, zt_element.matchButtomMap[0])));
        xpHDT[zt_element.matchTopMap[1]] = (x(plfsu, zt_element.matchTopMap[1]) - (x(plfsu, zt_element.matchButtomMap[1])));

        std::vector<double> xdelta(psize, 0);
        xdelta[zt_element.matchTopMap[0]] = zt_element.topNormal[1] * x(lfsu_uz, zt_element.matchTopMap[0]) + zt_element.buttomNormal[1] * x(lfsu_uz, zt_element.matchButtomMap[0]) + zt_element.topNormal[0] * x(lfsu_ur, zt_element.matchTopMap[0]) + zt_element.buttomNormal[0] * x(lfsu_ur, zt_element.matchButtomMap[0]);
        xdelta[zt_element.matchTopMap[1]] = zt_element.topNormal[1] * x(lfsu_uz, zt_element.matchTopMap[1]) + zt_element.buttomNormal[1] * x(lfsu_uz, zt_element.matchButtomMap[1]) + zt_element.topNormal[0] * x(lfsu_ur, zt_element.matchTopMap[1]) + zt_element.buttomNormal[0] * x(lfsu_ur, zt_element.matchButtomMap[1]);

        Dune::FieldVector<double, egDim> zero_position(0.0);

        // Fracture properties
        double delta_0 = p.Delta_0(eg, zero_position, 0);
        const double eta = p.Eta(eg, zero_position, 0);
        // Fluid identical for fracture and porous matrix
        auto Kf = p.Kfl(eg, zero_position, 1);


        auto gtface = ig.geometryInInside().type();
        int qorder = 2;
        const Dune::QuadratureRule<DF, igDim>& rule = Dune::QuadratureRules<DF,
                                               igDim>::rule(gtface, qorder);

        for (typename Dune::QuadratureRule<DF, igDim>::const_iterator ip =
                    rule.begin(); ip != rule.end(); ++ip)
        {

            Dune::FieldVector<DF, egDim> xG = ig.geometry().global(
                                                  ip->position());
            double rad = xG[0];

            Dune::FieldVector<DF, 2> ipP = ig.geometryInInside().global(
                                               ip->position());
            auto jac = ig.geometry().jacobianInverseTransposed(ip->position());

            auto EFrac = p.EFrac(eg, zero_position, 0);
            auto EFracLin = p.PerTan(eg, zero_position, 0);

            // transform gradients from reference element to real element
            // evaluate basis functions on reference element
            std::vector < URange > phi(psize);
            lfsu_ur.finiteElement().localBasis().evaluateFunction(
                ipP, phi);

            std::vector < URange > psi(psize);
            plfsu.finiteElement().localBasis().evaluateFunction(
                ipP, psi);

            // evaluate gradient of basis functions on reference element

            RF factor = ip->weight()
                        * ig.geometry().integrationElement(ip->position());

            double pHD = 0.0;
            double pHDT = 0.0;
            double delta = 0.0;

            for (size_type i = 0; i < psize; ++i) {

                pHD += xpHD[i] * psi[i];
                pHDT += xpHDT[i] * psi[i];
                delta += xdelta[i] * phi[i];

            }

            for (size_type i = 0; i < 2; ++i)
            {
                for (size_type j = 0; j < 2; ++j)
                {
                    int iT = zt_element.matchTopMap[i];
                    int iB = zt_element.matchButtomMap[i];

                    int jT = zt_element.matchTopMap[j];
                    int jB = zt_element.matchButtomMap[j];

                    mat.accumulate(plfsu, iT, plfsv, jT, rad * 1. / 3. *(delta + delta_0) *  psi[jT] * psi[iT] * factor );
                    mat.accumulate(plfsu, iT, plfsv, jB, rad * 1. / 6. *(delta + delta_0) *  psi[jT] * psi[iT] * factor );
                    mat.accumulate(plfsu, iB, plfsv, jT, rad * 1. / 6. *(delta + delta_0) *  psi[jT] * psi[iT] * factor );
                    mat.accumulate(plfsu, iB, plfsv, jB, rad * 1. / 3. *(delta + delta_0) *  psi[jT] * psi[iT] * factor );
                    mat.accumulate(plfsu, iT, lfsu_uz, jT, rad * 1. / 3. * psi[jT] * zt_element.topNormal[1] * pHD * psi[iT] * factor );
                    mat.accumulate(plfsu, iT, lfsu_uz, jB, rad * 1. / 6. * psi[jT] * zt_element.buttomNormal[1] * pHD * psi[iT] * factor );
                    mat.accumulate(plfsu, iB, lfsu_uz, jT, rad * 1. / 6. * psi[jT] * zt_element.topNormal[1] * pHD *  psi[iT] * factor );
                    mat.accumulate(plfsu, iB, lfsu_uz, jB, rad * 1. / 3. * psi[jT] * zt_element.buttomNormal[1] * pHD * psi[iT] * factor );

                    mat.accumulate(plfsu, iT, lfsu_uz, jT,  rad * Kf * 1. / 2. * phi[jT] * psi[iT] * zt_element.topNormal[1] * factor );
                    mat.accumulate(plfsu, iT, lfsu_uz, jB,  rad * Kf * 1. / 2. * phi[jT] * psi[iT] * zt_element.buttomNormal[1] * factor );
                    mat.accumulate(plfsu, iB, lfsu_uz, jT,  rad * Kf * 1. / 2. * phi[jT] * psi[iT] * zt_element.topNormal[1] * factor );
                    mat.accumulate(plfsu, iB, lfsu_uz, jB,  rad * Kf * 1. / 2. * phi[jT] * psi[iT] * zt_element.buttomNormal[1] * factor );
                }
            }
        }
    }



//! set time in parameter class
    void setTime(double time)
    {
        t = time;

    }

//! to be called once before each time step
    void preStep(double time, double dt, int stages)
    {
        t = time;
    }

//! to be called once before each stage
    void preStage(double time, int r)
    {
    }

//! to be called once at the end of each stage
    void postStage()
    {
    }

//! to be called once at the end of each stage
    void postStep()
    {
    }
private:
private:
    double t;
    const BCType& bctype;
    PhysicalParameters& p;
    unsigned int intorder;
};
