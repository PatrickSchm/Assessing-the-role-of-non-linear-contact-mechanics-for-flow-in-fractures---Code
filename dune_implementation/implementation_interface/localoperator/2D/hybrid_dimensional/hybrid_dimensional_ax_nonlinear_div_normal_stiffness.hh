#include <dune/geometry/referenceelements.hh>
#include <dune/geometry/quadraturerules.hh>
#include <dune/pdelab/common/geometrywrapper.hh>
#include <dune/pdelab/localoperator/defaultimp.hh>
#include <dune/pdelab/localoperator/pattern.hh>
#include <dune/pdelab/localoperator/flags.hh>
#include <dune/pdelab/localoperator/idefault.hh>

#include <math.h> /* cos */

#define PI 3.14159265
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
template <class BCType, typename P>
class HD_AX_NONLIN : public Dune::PDELab::FullVolumePattern,
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

    enum
    {
        doAlphaBoundary = false
    };
    enum
    {
        doLambdaBoundary = true
    }; // assemble boundary

    using PhysicalParameters = P;

    HD_AX_NONLIN(const BCType &bctype_,                                // boundary cond.type
                 PhysicalParameters &p_, unsigned int intorder_ = 2) : // Dune::PDELab::NumericalNonlinearJacobianApplyVolume<HD_AX_NONLIN<BCType, P> >(1.0e-7),
                                                                       // Dune::PDELab::NumericalNonlinearJacobianApplyZeroThickness<HD_AX_NONLIN<BCType, P> >(1.0e-7),
                                                                       bctype(bctype_), p(p_), intorder(intorder_)
    {
    }

    // boundary integral
    template <typename IG, typename LFSU, typename R>
    void lambda_boundary(const IG &ig, const LFSU &lfsu_s, R &r_s) const
    {
        // assume Galerkin: lfsu == lfsv
        // This yields more efficient code since the local functionspace only
        // needs to be evaluated once, but would be incorrect for a finite volume
        // method
        //        auto t = p.t("time");
        namespace ph = std::placeholders;

        using namespace Dune::TypeTree::Indices;
        using UGLFSU = Dune::TypeTree::Child<LFSU, Dune::TypeTree::Indices::_0>;
        using ULFSU = Dune::TypeTree::Child<UGLFSU, Dune::TypeTree::Indices::_0>;

        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::DomainFieldType DF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeFieldType RF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeType URange;
        typedef typename UGLFSU::Traits::SizeType size_type;

        //        auto geo = ig.geometry();

        static const unsigned int dim = 2;

        // Get geometry of intersection in local coordinates of inside cell
        auto gtface = ig.geometryInInside().type();

        // extract local function spaces
        const auto &ulfsu_s = child(lfsu_s, Dune::TypeTree::Indices::_0);
        unsigned int usize = ulfsu_s.child(0).size();

        const auto &plfsu = child(lfsu_s, Dune::TypeTree::Indices::_1);
        unsigned int psize = plfsu.size();

        const auto &lfsu_ur_s = ulfsu_s.child(0);
        const auto &lfsu_uz_s = ulfsu_s.child(1);
        // determine quadrature order
        const int qorder = 2;

        double applied_pressure = APRESSURE;
        // loop over quadrature points and integrate normal flux
        const Dune::QuadratureRule<DF, dim - 1> &rule = Dune::QuadratureRules<
            DF, dim - 1>::rule(gtface, qorder);
        for (typename Dune::QuadratureRule<DF, dim - 1>::const_iterator ip =
                 rule.begin();
             ip != rule.end(); ++ip)
        {
            Dune::FieldVector<DF, dim> xG = ig.geometry().global(
                ip->position());
            double rad = xG[0];
            // position of quadrature point in local coordinates of element
            Dune::FieldVector<DF, dim> local = ig.geometryInInside().global(
                ip->position());
            //      // evaluate basis functions at integration point
            std::vector<URange> phi(usize);
            ulfsu_s.child(0).finiteElement().localBasis().evaluateFunction(
                local, phi);

            auto bctype = p.bctype(ig, ip->position());

            RF factor = ip->weight() * ig.geometry().integrationElement(ip->position());

            double Ap = 0;
            for (size_type i = 0; i < psize; i++)
            {

                if (bctype[1] == BC::StressNeumann)
                {
                    if (xG[1] < 37.5+1.e-6)
                    {
                        if ((t < TIME2) && (t > TIME1))
                        {
                            Ap = -(t - TIME1) / TIME1 * APRESSURE;
                        }
                        else if (t > TIME2)
                        {
                            Ap = -APRESSURE + VFAC * VPRESSURE * sin(2.0 * 3.142 / 10.0 * (t - TIME2 - 5.0));
                        }
                        else
                        {
                            Ap = 0;
                        }

                        r_s.accumulate(lfsu_uz_s, i,
                                       -Ap * rad * phi[i] * factor);
                    }
                    if (xG[1] > 75.0025-1.e-5)
                    {
                        if (t < TIME1)
                        {
                            Ap = -t / TIME1 * AN;
                        }
                        else
                        {
                            Ap = -AN;
                        }

                        r_s.accumulate(lfsu_uz_s, i,
                                       -Ap * rad * phi[i] * factor);
                    }
                }
                if (bctype[0] == BC::StressNeumann)
                {
                    if (xG[0] > 15.0 - 1.e-5)
                    {
                        if (t < TIME1)
                        {
                            Ap = -(t - TIME1) / TIME1 * 20.0;
                        }
                        else if (t > TIME1)
                        {
                            Ap = -20.0;
                        }
                        else
                        {
                            Ap = 0;
                        }

                        r_s.accumulate(lfsu_ur_s, i,
                                       -Ap * rad * phi[i] * factor);
                    }
                    if (xG[0] < 3.0 + 1.e-5)
                    {
                        if ((t < TIME2) && (t > TIME1))
                        {
                            Ap = t / TIME1 * APRESSURE;
                        }
                        if (t > TIME2)
                        {
                            Ap = -APRESSURE + VFAC * VPRESSURE * sin(2.0 * 3.142 / 10.0 * (t - TIME2 - 5.0));
                        }
                        else
                        {
                            Ap = 0.0;
                        }

                        r_s.accumulate(lfsu_ur_s, i,
                                       -Ap * rad * phi[i] * factor);
                    }
                }
            }
        }
    }
    template <typename EG, typename LFSU, typename X, typename LFSV, typename R>
    void alpha_volume(const EG &eg, const LFSU &lfsu, const X &x,
                      const LFSV &lfsv, R &r, int iMat) const
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
        const auto &ulfsu = child(lfsu, Dune::TypeTree::Indices::_0);
        unsigned int usize = ulfsu.child(0).size();

        const auto &plfsu = child(lfsu, Dune::TypeTree::Indices::_1);
        unsigned int psize = plfsu.size();

        // determine quadrature order
        int qorder = QORDER;

        // extract local function spaces
        // select quadrature rule

        const Dune::QuadratureRule<DF, dim> &rule = Dune::QuadratureRules<DF,
                                                                          dim>::rule(gt, qorder);
        // loop over quadrature points

        for (typename Dune::QuadratureRule<DF, dim>::const_iterator ip =
                 rule.begin();
             ip != rule.end(); ++ip)
        {
            // Parameter Porous
            auto k = p.K(eg, ip->position(), iMat - 1);
            const auto G = p.G(eg, ip->position(), iMat - 1);
            const auto ks = p.Kgr(eg, ip->position(), iMat - 1);
            const auto Kf = p.Kfl(eg, ip->position(), iMat - 1);
            const auto phi0 = p.por(eg, ip->position(), iMat - 1);
            const auto per = p.Per_x(eg, ip->position(), iMat - 1);
            const auto gamma = p.gammaw(eg, ip->position(), iMat - 1);

            k = (phi0 * (1. / ks - 1. / Kf) + 1. / ks - 1. / k) /
                ((phi0 / k) * (1. / ks - 1. / Kf) + (1. / ks) * (1. / ks - 1. / k));
            RF alpha = 1.0 - k / ks;
            RF M = phi0 / Kf + (alpha - phi0) / ks;
            double lambda_ = k - 2.0 / 3.0 * G;
            double mu_ = G;

            double E = (9.0 * ks * G) / (3.0 * ks + G);
            double v = (3.0 * ks - 2.0 * G) / (2.0 * (3.0 * ks + G));

            Dune::FieldVector<DF, dim> xG = eg.geometry().global(
                ip->position());
            // transform gradients from reference element to real element
            const typename EG::Geometry::JacobianInverseTransposed jac =
                eg.geometry().jacobianInverseTransposed(ip->position());

            const auto &lfsu_ur = ulfsu.child(0);
            const auto &lfsu_uz = ulfsu.child(1);

            // evaluate basis functions on reference element
            std::vector<URange> phi(usize);
            ulfsu.child(0).finiteElement().localBasis().evaluateFunction(
                ip->position(), phi);
            // evaluate gradient of basis functions on reference element
            std::vector<Jacobian> jsu(usize);
            ulfsu.child(0).finiteElement().localBasis().evaluateJacobian(
                ip->position(), jsu);

            std::vector<Dune::FieldVector<RF, dim>> gradphi(usize);
            for (size_type i = 0; i < ulfsu.child(0).size(); i++)
                jac.mv(jsu[i][0], gradphi[i]);

            Gradient gradur(0.0);
            Gradient graduz(0.0);
            for (size_type i = 0; i < usize; ++i)
                gradur.axpy(x(lfsu_ur, i), gradphi[i]);
            for (size_type i = 0; i < usize; ++i)
                graduz.axpy(x(lfsu_uz, i), gradphi[i]);

            // evaluate basis functions on reference element
            std::vector<URange> psi(psize);
            plfsu.finiteElement().localBasis().evaluateFunction(
                ip->position(), psi);
            // evaluate gradient of basis functions on reference element
            std::vector<Jacobian> jsv(psize);
            plfsu.finiteElement().localBasis().evaluateJacobian(
                ip->position(), jsv);

            std::vector<Dune::FieldVector<RF, dim>> gradpsi(psize);
            for (size_type i = 0; i < plfsu.size(); i++)
                jac.mv(jsv[i][0], gradpsi[i]);

            Gradient gradp(0.0);
            for (size_type i = 0; i < psize; ++i)
                gradp.axpy(x(plfsu, i), gradpsi[i]);

            // compute u at integration point
            double p = 0.0;

            for (size_t i = 0; i < psize; i++)
            {
                p += x(plfsu, i) * psi[i];
            }

            // compute u at integration point
            Dune::FieldVector<RF, dim> u(0.0);
            for (int d = 0; d < dim; ++d)
            {
                u[d] = 0.0;
                const auto &lfsu_u = ulfsu.child(d);
                for (size_t i = 0; i < usize; i++)
                {
                    u[d] += x(lfsu_u, i) * phi[i];
                }
            }
            RF factor = ip->weight() * eg.geometry().integrationElement(ip->position());
            double rad = xG[0];

            double dur_dr = gradur[0];
            double dur_dz = gradur[1];

            double duz_dr = graduz[0];
            double duz_dz = graduz[1];

            double Efac = E * (1.0 - v) / ((1.0 + v) * (1.0 - 2.0 * v));
            double fac_k = v / (1.0 - v);
            double fac_s = (1.0 - 2.0 * v) / (2.0 * (1.0 - v));

            for (size_type i = 0; i < usize; ++i)
            {
                double dphi_dr = gradphi[i][0];
                double dphi_dz = gradphi[i][1];

                double phiIp = phi[i];

                r.accumulate(lfsu_ur, i,
                             rad * (Efac * (dphi_dr * (dur_dr + fac_k * (duz_dz + u[0] / rad)) + fac_s * (dphi_dz * duz_dr + dphi_dz * dur_dz) + phiIp / rad * (fac_k * (dur_dr + duz_dz) + u[0] / rad))
                                    // - alpha *  p * gradphi[i][0]
                                    ) *
                                 factor);

                r.accumulate(lfsu_uz, i,
                             rad * (Efac * (dphi_dz * (fac_k * (dur_dr + u[0] / rad) + duz_dz) + fac_s * (dphi_dr * dur_dz + dphi_dr * duz_dr))
                                    // - alpha *  p * gradphi[i][0]
                                    ) *
                                 factor);
            }

            for (size_type i = 0; i < psize; ++i)
            {
                // r.accumulate(plfsu, i,
                //              rad * (1.0 / M * per / gamma * (gradp[0] * gradpsi[i][0] + gradp[1] * gradpsi[i][1]))
                //              * factor);
            }
        }
    }

    template <typename EG, typename LFSU, typename X, typename LFSV, typename MA>
    void jacobian_volume(const EG &eg, const LFSU &lfsu, const X &x,
                         const LFSV &lfsv, MA &mat, int iMat) const
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
        const auto &ulfsu = child(lfsu, Dune::TypeTree::Indices::_0);
        const unsigned int usize = ulfsu.child(0).size();
        const auto &plfsu = child(lfsu, Dune::TypeTree::Indices::_1);
        const unsigned int psize = plfsu.size();

        // determine quadrature order
        const int qorder = QORDER;

        // extract local function spaces
        // select quadrature rule
        const Dune::QuadratureRule<DF, dim> &rule = Dune::QuadratureRules<DF,
                                                                          dim>::rule(gt, qorder);
        // loop over quadrature points

        for (typename Dune::QuadratureRule<DF, dim>::const_iterator ip =
                 rule.begin();
             ip != rule.end(); ++ip)
        {
            // Parameter Porous
            auto k = p.K(eg, ip->position(), iMat - 1);
            const auto G = p.G(eg, ip->position(), iMat - 1);
            const auto ks = p.Kgr(eg, ip->position(), iMat - 1);
            const auto Kf = p.Kfl(eg, ip->position(), iMat - 1);
            const auto phi0 = p.por(eg, ip->position(), iMat - 1);
            const auto per = p.Per_x(eg, ip->position(), iMat - 1);
            const auto gammaw = p.gammaw(eg, ip->position(), iMat - 1);

            k = (phi0 * (1. / ks - 1. / Kf) + 1. / ks - 1. / k) /
                ((phi0 / k) * (1. / ks - 1. / Kf) + (1. / ks) * (1. / ks - 1. / k));
            RF alpha = 1.0 - k / ks;
            RF M = phi0 / Kf + (alpha - phi0) / ks;

            double lambda_ = k - 2.0 / 3.0 * G;
            double mu_ = G;
            Dune::FieldVector<DF, dim> xG = eg.geometry().global(
                ip->position());

            double E = (9.0 * ks * G) / (3.0 * ks + G);
            double v = (3.0 * ks - 2.0 * G) / (2.0 * (3.0 * ks + G));

            // transform gradients from reference element to real element
            const typename EG::Geometry::JacobianInverseTransposed jac =
                eg.geometry().jacobianInverseTransposed(ip->position());

            const auto &lfsu_ur = ulfsu.child(0);
            const auto &lfsu_uz = ulfsu.child(1);

            // evaluate basis functions on reference element
            std::vector<URange> phi(usize);
            ulfsu.child(0).finiteElement().localBasis().evaluateFunction(
                ip->position(), phi);
            // evaluate gradient of basis functions on reference element
            std::vector<Jacobian> jsu(usize);
            ulfsu.child(0).finiteElement().localBasis().evaluateJacobian(
                ip->position(), jsu);

            std::vector<Dune::FieldVector<RF, dim>> gradphi(usize);
            for (size_type i = 0; i < ulfsu.child(0).size(); i++)
                jac.mv(jsu[i][0], gradphi[i]);

            Gradient gradur(0.0);
            Gradient graduz(0.0);
            for (size_type i = 0; i < usize; ++i)
                gradur.axpy(x(lfsu_ur, i), gradphi[i]);
            for (size_type i = 0; i < usize; ++i)
                graduz.axpy(x(lfsu_uz, i), gradphi[i]);

            // evaluate basis functions on reference element
            std::vector<URange> psi(psize);
            plfsu.finiteElement().localBasis().evaluateFunction(
                ip->position(), psi);
            // evaluate gradient of basis functions on reference element
            std::vector<Jacobian> jsv(psize);
            plfsu.finiteElement().localBasis().evaluateJacobian(
                ip->position(), jsv);

            std::vector<Dune::FieldVector<RF, dim>> gradpsi(psize);
            for (size_type i = 0; i < plfsu.size(); i++)
                jac.mv(jsv[i][0], gradpsi[i]);

            Gradient gradp(0.0);
            for (size_type i = 0; i < psize; ++i)
                gradp.axpy(x(plfsu, i), gradpsi[i]);

            // compute u at integration point
            double p = 0.0;

            for (size_t i = 0; i < psize; i++)
            {
                p += x(plfsu, i) * psi[i];
            }

            // compute u at integration point
            Dune::FieldVector<RF, dim> u(0.0);
            for (int d = 0; d < dim; ++d)
            {
                u[d] = 0.0;
                const auto &lfsu_u = ulfsu.child(d);
                for (size_t i = 0; i < usize; i++)
                {
                    u[d] += x(lfsu_u, i) * phi[i];
                }
            }
            RF factor = ip->weight() * eg.geometry().integrationElement(ip->position());
            double rad = xG[0];

            double Efac = E * (1.0 - v) / ((1.0 + v) * (1.0 - 2.0 * v));
            double fac_k = v / (1.0 - v);
            double fac_s = (1.0 - 2.0 * v) / (2.0 * (1.0 - v));

            for (size_type i = 0; i < usize; i++)
            {
                for (size_type j = 0; j < usize; ++j)
                {
                    double dphi_dr = gradphi[i][0];
                    double dphi_dz = gradphi[i][1];

                    double dphi_dr_j = gradphi[j][0];
                    double dphi_dz_j = gradphi[j][1];

                    double phiIp = phi[i];
                    double phiIp_j = phi[j];

                    double Efac = E * (1.0 - v) / ((1.0 + v) * (1.0 - 2.0 * v));
                    double fac_k = v / (1.0 - v);
                    double fac_s = (1.0 - 2.0 * v) / (2.0 * (1.0 - v));
                    // ------------------ ur -----------------
                    // ur/dr

                    mat.accumulate(lfsu_ur, i, lfsu_ur, j,
                                   rad * (Efac * (dphi_dr * (dphi_dr_j + fac_k * (phiIp_j / rad)) + fac_s * (dphi_dz * dphi_dz_j) + phiIp / rad * (fac_k * dphi_dr_j + phiIp_j / rad))) * factor);
                    // ur/dz
                    mat.accumulate(lfsu_ur, i, lfsu_uz, j,
                                   rad * (Efac * (dphi_dr * (fac_k * dphi_dz_j) + fac_s * (dphi_dz * dphi_dr_j) + phiIp / rad * (fac_k * dphi_dz_j))) * factor);

                    // ------------------ uz -----------------
                    // uz/dr

                    mat.accumulate(lfsu_uz, i, lfsu_ur, j,
                                   rad * (Efac * (dphi_dz * (fac_k * (dphi_dr_j + phiIp_j / rad)) + fac_s * (dphi_dr * dphi_dz_j))) * factor);
                    // uz/dz
                    mat.accumulate(lfsu_uz, i, lfsu_uz, j,
                                   rad * (Efac * (dphi_dz * dphi_dz_j + fac_s * (dphi_dr * dphi_dr_j))) * factor);
                }

            }
            for (size_type i = 0; i < psize; i++)
            {
                for (size_type j = 0; j < psize; ++j)
                {
                    // mat.accumulate(plfsu, i, plfsu, j,
                    //                rad * (1.0 / M * per / gammaw * (gradpsi[i][0] * gradpsi[j][0] + gradpsi[i][1] * gradpsi[j][1]))
                    //                * factor);
                }
            }
        }
    }

    template <typename GEOS, typename IGS, typename LFSU, typename X, typename LFSV, typename R>
    void alpha_zero_thickness(const GEOS &geos, const IGS &zt_element, const LFSU &lfsu, const X &x,
                              const LFSV &lfsv, R &r, std::vector<int> indices) const
    {

        // -----------------------------------------------------
        auto eg = std::get<0>(geos);
        auto ig = std::get<1>(geos);

        // assume Galerkin: lfsu == lfsv
        // This yields more efficient code since the local functionspace only
        // needs to be evaluated once, but would be incorrect for a finite volume
        // method
        int elIdx = indices[0];

        // dimensions
        const int igDim = 1;
        const int egDim = 2;

        using namespace Dune::TypeTree::Indices;
        using UGLFSU = Dune::TypeTree::Child<LFSU, Dune::TypeTree::Indices::_0>;
        using ULFSU = Dune::TypeTree::Child<UGLFSU, Dune::TypeTree::Indices::_0>;

        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::DomainFieldType DF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeFieldType RF;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::JacobianType Jacobian;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeType URange;
        typedef Dune::FieldVector<RF, egDim> Gradient;
        typedef typename UGLFSU::Traits::SizeType size_type;
        // get geometry

        auto igeo = ig.geometry();
        auto igt = igeo.type();

        //        // extract local function spaces
        const auto &ulfsu = child(lfsu, Dune::TypeTree::Indices::_0);
        const auto &plfsu = child(lfsu, Dune::TypeTree::Indices::_1);
        unsigned int psize = plfsu.size();

        // determine quadrature order

        // extract local function spaces
        // select quadrature rule

        double DTfac;

        const auto &lfsu_ur = ulfsu.child(0);
        const auto &lfsu_uz = ulfsu.child(1);

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
        DTfac = 1.0e10;

        auto gtface = ig.geometryInInside().type();
        int qorder = QORDER;
        const Dune::QuadratureRule<DF, igDim> &rule = Dune::QuadratureRules<DF,
                                                                            igDim>::rule(gtface, qorder);
        int iip = 0;

        for (typename Dune::QuadratureRule<DF, igDim>::const_iterator ip =
                 rule.begin();
             ip != rule.end(); ++ip)
        {

            Dune::FieldVector<DF, egDim> xG = ig.geometry().global(
                ip->position());
            double rad = xG[0];

            Dune::FieldVector<DF, 2> ipP = ig.geometryInInside().global(
                ip->position());
            auto jac = ig.geometry().jacobianInverseTransposed(ip->position());
            auto EFrac = p.EFrac(eg, zero_position, 0);
            // if (xG[1] < 50) {
            //     EFrac = p.EFrac(eg, zero_position, 1);
            //     delta_0 = p.Delta_0(eg, zero_position, 1);
            // }
            auto EFracLin = p.PerTan(eg, zero_position, 0);
            // transform gradients from reference element to real element
            // evaluate basis functions on reference element
            std::vector<URange> phi(psize);
            lfsu_ur.finiteElement().localBasis().evaluateFunction(
                ipP, phi);

            std::vector<URange> psi(psize);
            plfsu.finiteElement().localBasis().evaluateFunction(
                ipP, psi);

            // evaluate gradient of basis functions on reference element
            std::vector<Jacobian> jsv(psize);
            plfsu.finiteElement().localBasis().evaluateJacobian(
                ipP, jsv);

            std::vector<Dune::FieldVector<RF, egDim>> gradpsi(psize);
            for (auto iT : zt_element.matchTopMap)
                gradpsi[iT][0] = -jsv[iT][0][1] * jac[0];

            RF factor = ip->weight() * ig.geometry().integrationElement(ip->position());

            if (zt_element.topIndx == zt_element.active_inter)
            {

                double pHD = 0.0;
                double pHDT = 0.0;
                double delta = 0.0;

                Dune::FieldVector<RF, 2> gradpHD(0.0);
                Dune::FieldVector<RF, 2> gradDelta(0.0);
                for (size_type i = 0; i < psize; ++i)
                {

                    pHD += xpHD[i] * psi[i];
                    pHDT += xpHDT[i] * psi[i];
                    delta += xdelta[i] * phi[i];
                    for (int idim = 0; idim < 2; idim++)
                    {
                        gradpHD[idim] += xpHD[i] * gradpsi[i][idim];
                        gradDelta[idim] += xdelta[i] * gradpsi[i][idim];
                    }
                }

                double delta_new = delta_0 + delta;
                double per_delta = (delta_new * delta_new * delta_new) / (eta * 12.0);
                double slopeFactor = 1.0;
                double E_spring = slopeFactor / ((delta_0 + slopeFactor * delta)) * EFrac;

                if (delta_new < 1.e-7)
                    std::cout << delta_new << std::endl;


                for (size_type i = 0; i < 2; ++i)
                {

                    int iT = zt_element.matchTopMap[i];
                    int iB = zt_element.matchButtomMap[i];

                    // Diffusion
                    r.accumulate(plfsu, iT, rad * 1. / 2. * Kf * per_delta * (gradpHD[0] * gradpsi[iT][0]) * factor);
                    r.accumulate(plfsu, iB, rad * 1. / 2. * Kf * per_delta * (gradpHD[0] * gradpsi[iT][0]) * factor);

                    r.accumulate(lfsu_uz, iT, rad * E_spring * phi[iT] * (delta)*zt_element.topNormal[1] * factor);
                    r.accumulate(lfsu_uz, iB, rad * E_spring * phi[iT] * (delta)*zt_element.buttomNormal[1] * factor);

                    r.accumulate(lfsu_ur, iT, -rad * (pHD * phi[iT]) * zt_element.topNormal[0] * factor);
                    r.accumulate(lfsu_ur, iB, -rad * (pHD * phi[iT]) * zt_element.buttomNormal[0] * factor);
                    r.accumulate(lfsu_uz, iT, -rad * (pHD * phi[iT]) * zt_element.topNormal[1] * factor);
                    r.accumulate(lfsu_uz, iB, -rad * (pHD * phi[iT]) * zt_element.buttomNormal[1] * factor);

                    r.accumulate(plfsu, iT, rad * DTfac * (pHDT * psi[iT]) * factor * delta_0);
                    r.accumulate(plfsu, iB, -rad * DTfac * (pHDT * psi[iT]) * factor * delta_0);
                }
                InternalVariables::getInstance().set(elIdx, iip, "sigma_n", E_spring * delta);
                InternalVariables::getInstance().set(elIdx, iip, "delta", delta + delta_0);
                InternalVariables::getInstance().set(elIdx, iip, "length", factor);
                InternalVariables::getInstance().set(elIdx, iip, "p", pHD);
                InternalVariables::getInstance().set(elIdx, iip, "rad", rad);
                iip++;
            }
        }
    }

    template <typename GEOS, typename IGS, typename LFSU, typename X, typename LFSV, typename MA>
    void jacobian_zero_thickness(const GEOS &geos, const IGS &zt_element, const LFSU &lfsu, const X &x,
                                 const LFSV &lfsv, MA &mat, std::vector<int> indices) const
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
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::JacobianType Jacobian;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::RangeType URange;
        typedef Dune::FieldVector<RF, egDim> Gradient;
        typedef typename UGLFSU::Traits::SizeType size_type;
        // get geometry
        auto igeo = ig.geometry();
        auto igt = igeo.type();

        //        // extract local function spaces
        const auto &ulfsu = child(lfsu, Dune::TypeTree::Indices::_0);
        auto lfsu_ur = ulfsu.child(0);
        auto lfsu_uz = ulfsu.child(1);

        const auto &plfsu = child(lfsu, Dune::TypeTree::Indices::_1);
        const auto &plfsv = child(lfsv, Dune::TypeTree::Indices::_1);
        unsigned int psize = plfsu.size();

        // extract local function spaces
        // select quadrature rule

        double DTfac;

        // Porous matrix properties

        Dune::FieldVector<double, egDim> zero_position(0.0);

        // Fracture properties
        double delta_0 = p.Delta_0(eg, zero_position, 0);
        const double eta = p.Eta(eg, zero_position, 0);
        // Fluid identical for fracture and porous matrix
        const auto Kf = p.Kfl(eg, zero_position, 1);

        DTfac = 1.0e10;

        std::vector<double> xpHD(psize, 0);
        xpHD[zt_element.matchTopMap[0]] = (x(plfsu, zt_element.matchTopMap[0]) + x(plfsu, zt_element.matchButtomMap[0])) / 2.0;
        xpHD[zt_element.matchTopMap[1]] = (x(plfsu, zt_element.matchTopMap[1]) + x(plfsu, zt_element.matchButtomMap[1])) / 2.0;

        std::vector<double> xpHDT(psize, 0);
        xpHDT[zt_element.matchTopMap[0]] = (x(plfsu, zt_element.matchTopMap[0]) - (x(plfsu, zt_element.matchButtomMap[0])));
        xpHDT[zt_element.matchTopMap[1]] = (x(plfsu, zt_element.matchTopMap[1]) - (x(plfsu, zt_element.matchButtomMap[1])));

        std::vector<double> xdelta(psize, 0);
        xdelta[zt_element.matchTopMap[0]] = zt_element.topNormal[1] * x(lfsu_uz, zt_element.matchTopMap[0]) + zt_element.buttomNormal[1] * x(lfsu_uz, zt_element.matchButtomMap[0]) + zt_element.topNormal[0] * x(lfsu_ur, zt_element.matchTopMap[0]) + zt_element.buttomNormal[0] * x(lfsu_ur, zt_element.matchButtomMap[0]);
        xdelta[zt_element.matchTopMap[1]] = zt_element.topNormal[1] * x(lfsu_uz, zt_element.matchTopMap[1]) + zt_element.buttomNormal[1] * x(lfsu_uz, zt_element.matchButtomMap[1]) + zt_element.topNormal[0] * x(lfsu_ur, zt_element.matchTopMap[1]) + zt_element.buttomNormal[0] * x(lfsu_ur, zt_element.matchButtomMap[1]);

        auto gtface = ig.geometryInInside().type();
        int qorder = QORDER;
        const Dune::QuadratureRule<DF, igDim> &rule = Dune::QuadratureRules<DF,
                                                                            igDim>::rule(gtface, qorder);

        for (typename Dune::QuadratureRule<DF, igDim>::const_iterator ip =
                 rule.begin();
             ip != rule.end(); ++ip)
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
            std::vector<URange> phi(psize);
            lfsu_ur.finiteElement().localBasis().evaluateFunction(
                ipP, phi);

            std::vector<URange> psi(psize);
            plfsu.finiteElement().localBasis().evaluateFunction(
                ipP, psi);

            // evaluate gradient of basis functions on reference element
            std::vector<Jacobian> jsv(psize);
            plfsu.finiteElement().localBasis().evaluateJacobian(
                ipP, jsv);

            std::vector<Dune::FieldVector<RF, egDim>> gradpsi(psize);
            for (auto iT : zt_element.matchTopMap)
                gradpsi[iT][0] = -jsv[iT][0][1] * jac[0];
            RF factor = ip->weight() * ig.geometry().integrationElement(ip->position());

            double pHD = 0.0;
            double pHDT = 0.0;
            double delta = 0.0;

            Dune::FieldVector<RF, 2> gradpHD(0.0);
            Dune::FieldVector<RF, 2> gradDelta(0.0);

            for (size_type i = 0; i < psize; ++i)
            {

                pHD += xpHD[i] * psi[i];
                pHDT += xpHDT[i] * psi[i];
                delta += xdelta[i] * phi[i];
                for (int idim = 0; idim < 2; idim++)
                {
                    gradDelta[idim] += xdelta[i] * gradpsi[i][idim];
                    gradpHD[idim] += xpHD[i] * gradpsi[i][idim];
                }
            }

            double delta_new = delta_0 + delta;
            double per_delta = (delta_new * delta_new) / (eta * 12.0);
            double slopeFactor = 1.0;
            double E_spring = slopeFactor / ((delta_0 + slopeFactor * delta)) * EFrac;



            if (delta_new < 1.e-7)
                std::cout << delta_new << std::endl;

            for (size_type i = 0; i < 2; ++i)
            {

                for (size_type j = 0; j < 2; ++j)
                {

                    int iT = zt_element.matchTopMap[i];
                    int iB = zt_element.matchButtomMap[i];
                    int jT = zt_element.matchTopMap[j];
                    int jB = zt_element.matchButtomMap[j];

                    double delta_new_dz_top = phi[jT] * zt_element.topNormal[1];
                    double delta_new_dz_buttom = phi[jT] * zt_element.buttomNormal[1];

                    double E_spring_dz_top = -slopeFactor / ((delta_0 + slopeFactor * delta) * (delta_0 + slopeFactor * delta)) * slopeFactor * EFrac * phi[jT] * zt_element.topNormal[1];
                    double E_spring_dz_buttom = -slopeFactor / ((delta_0 + slopeFactor * delta) * (delta_0 + slopeFactor * delta)) * slopeFactor * EFrac * phi[jT] * zt_element.buttomNormal[1];


                    mat.accumulate(lfsu_ur, iT, plfsv, jT, -rad * 1. / 2. * phi[iT] * psi[jT] * factor * zt_element.topNormal[0]);
                    mat.accumulate(lfsu_ur, iT, plfsv, jB, -rad * 1. / 2. * phi[iT] * psi[jT] * factor * zt_element.topNormal[0]);
                    mat.accumulate(lfsu_ur, iB, plfsv, jT, -rad * 1. / 2. * phi[iT] * psi[jT] * factor * zt_element.buttomNormal[0]);
                    mat.accumulate(lfsu_ur, iB, plfsv, jB, -rad * 1. / 2. * phi[iT] * psi[jT] * factor * zt_element.buttomNormal[0]);

                    mat.accumulate(lfsu_uz, iT, plfsv, jT, -rad * 1. / 2. * phi[iT] * psi[jT] * factor * zt_element.topNormal[1]);
                    mat.accumulate(lfsu_uz, iT, plfsv, jB, -rad * 1. / 2. * phi[iT] * psi[jT] * factor * zt_element.topNormal[1]);
                    mat.accumulate(lfsu_uz, iB, plfsv, jT, -rad * 1. / 2. * phi[iT] * psi[jT] * factor * zt_element.buttomNormal[1]);
                    mat.accumulate(lfsu_uz, iB, plfsv, jB, -rad * 1. / 2. * phi[iT] * psi[jT] * factor * zt_element.buttomNormal[1]);

                    mat.accumulate(lfsu_uz, iT, lfsu_uz, jT, rad * E_spring * phi[iT] * phi[jT] * zt_element.topNormal[1] * zt_element.topNormal[1] * factor);
                    mat.accumulate(lfsu_uz, iT, lfsu_uz, jB, rad * E_spring * phi[iT] * phi[jT] * zt_element.topNormal[1] * zt_element.buttomNormal[1] * factor);
                    mat.accumulate(lfsu_uz, iB, lfsu_uz, jT, rad * E_spring * phi[iT] * phi[jT] * zt_element.buttomNormal[1] * zt_element.topNormal[1] * factor);
                    mat.accumulate(lfsu_uz, iB, lfsu_uz, jB, rad * E_spring * phi[iT] * phi[jT] * zt_element.buttomNormal[1] * zt_element.buttomNormal[1] * factor);

                    mat.accumulate(lfsu_uz, iT, lfsu_uz, jT, rad * E_spring_dz_top * (delta)*phi[iT] * zt_element.topNormal[1] * factor);
                    mat.accumulate(lfsu_uz, iT, lfsu_uz, jB, rad * E_spring_dz_buttom * (delta)*phi[iT] * zt_element.topNormal[1] * factor);
                    mat.accumulate(lfsu_uz, iB, lfsu_uz, jT, rad * E_spring_dz_top * (delta)*phi[iT] * zt_element.buttomNormal[1] * factor);
                    mat.accumulate(lfsu_uz, iB, lfsu_uz, jB, rad * E_spring_dz_buttom * (delta)*phi[iT] * zt_element.buttomNormal[1] * factor);

                    // Diffusion
                    mat.accumulate(plfsu, iT, plfsv, jT, rad * 1.0 / 3.0 * Kf * per_delta * delta_new * (gradpsi[iT][0] * gradpsi[jT][0]) * factor);
                    mat.accumulate(plfsu, iT, plfsv, jB, rad * 1.0 / 6.0 * Kf * per_delta * delta_new * (gradpsi[iT][0] * gradpsi[jT][0]) * factor);
                    mat.accumulate(plfsu, iB, plfsv, jT, rad * 1.0 / 6.0 * Kf * per_delta * delta_new * (gradpsi[iT][0] * gradpsi[jT][0]) * factor);
                    mat.accumulate(plfsu, iB, plfsv, jB, rad * 1.0 / 3.0 * Kf * per_delta * delta_new * (gradpsi[iT][0] * gradpsi[jT][0]) * factor);

                    mat.accumulate(plfsu, iT, lfsu_uz, jT, rad * 1.0 / 3.0 / (12.0 * eta) * Kf * 3.0 * delta_new * delta_new_dz_top * delta_new * (gradpHD[0] * gradpsi[iT][0]) * factor);
                    mat.accumulate(plfsu, iT, lfsu_uz, jB, rad * 1.0 / 6.0 / (12.0 * eta) * Kf * 3.0 * delta_new * delta_new_dz_buttom * delta_new * (gradpHD[0] * gradpsi[iT][0]) * factor);
                    mat.accumulate(plfsu, iB, lfsu_uz, jT, rad * 1.0 / 6.0 / (12.0 * eta) * Kf * 3.0 * delta_new * delta_new_dz_top * delta_new * (gradpHD[0] * gradpsi[iT][0]) * factor);
                    mat.accumulate(plfsu, iB, lfsu_uz, jB, rad * 1.0 / 3.0 / (12.0 * eta) * Kf * 3.0 * delta_new * delta_new_dz_buttom * delta_new * (gradpHD[0] * gradpsi[iT][0]) * factor);

                    mat.accumulate(plfsu, iT, plfsv, jT, rad * DTfac * (psi[iT] * psi[jT]) * factor * delta_0);
                    mat.accumulate(plfsu, iT, plfsv, jB, -rad * DTfac * (psi[iT] * psi[jT]) * factor * delta_0);
                    mat.accumulate(plfsu, iB, plfsv, jT, -rad * DTfac * (psi[iT] * psi[jT]) * factor * delta_0);
                    mat.accumulate(plfsu, iB, plfsv, jB, rad * DTfac * (psi[iT] * psi[jT]) * factor * delta_0);
                }
            }
        }
    }

    //! s
    //! set time in parameter class
    void setTime(double time)
    {
        t = time;
    }

    //! to be called once before each time step
    void preStep(double time, double dt, int stages)
    {
        t = time;
        dtime = dt;
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
    const BCType &bctype;
    PhysicalParameters &p;
    unsigned int intorder;
    double t;
    double dtime;
    std::vector<double> old_u;
};
