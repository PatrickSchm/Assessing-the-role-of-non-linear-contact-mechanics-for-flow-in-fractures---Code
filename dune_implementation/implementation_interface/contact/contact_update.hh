#include <dune/pdelab/common/geometrywrapper.hh>
#include <dune/pdelab/common/intersectiontype.hh>

std::vector<double> lambda_p(100000, 0.0);
std::vector<bool> el_contact(100000, false);
bool contact_flag = false;
bool contact_first = false;
double delta_max = 1e6;

class ZeroThicknessUpdate {
public:
    ZeroThicknessUpdate (double length_,
                         std::vector<int> topMap_,
                         std::vector<int> buttomMap_,
                         std::vector<int> matchTopMap_,
                         std::vector<int> matchButtomMap_,
                         Dune::FieldVector<double, 2> topXip_,
                         Dune::FieldVector<double, 2> buttomXip_,
                         Dune::FieldVector<double, 2> topNormal_,
                         Dune::FieldVector<double, 2> buttomNormal_)
        : length(length_), matchTopMap(matchTopMap_), matchButtomMap(matchButtomMap_), topMap(topMap_),
          buttomMap(buttomMap_), topXip(topXip_),
          buttomXip(buttomXip_), topNormal(topNormal_),
          buttomNormal(buttomNormal_) {}

    double length;

    std::vector<int> matchTopMap;
    std::vector<int> matchButtomMap;

    std::vector<int> topMap;
    std::vector<int> buttomMap;

    Dune::FieldVector<double, 2> topXip;
    Dune::FieldVector<double, 2> buttomXip;

    Dune::FieldVector<double, 2> topNormal;
    Dune::FieldVector<double, 2> buttomNormal;
};

template<typename GFS, typename GRID, typename EID, typename U>
void updateLambda(double dt, double delta_0, const GFS & gfs, const GRID & grid, U & unew, U & uold, EID & element_flags) {
    std::cout.precision(17);

    using EntitySet = typename GFS::Traits::EntitySet;
    using Element = typename EntitySet::Element;
    using Intersection = typename EntitySet::Intersection;

    const typename GFS::Ordering& ordering = gfs.ordering();
    auto gv = gfs.gridView();

    typedef Dune::PDELab::LocalFunctionSpace<GFS> LFSU;
    LFSU lfs(gfs);

    auto entitySet = gfs.entitySet();
    auto& indexSet = entitySet.indexSet();
    std::vector<bool> updated;
    updated.resize(gv.size(2));
    double epsilon = 1.e-7;

    delta_max = 1e7;

    const auto &lis = grid->localIdSet();

    for (const auto & element : elements(entitySet))
    {
        lfs.bind(element);
        long unsigned int idsindex = indexSet.index(element);
        int iMat = element_flags[lis.id(element)];

        if (iMat < 1000)
            continue;

        const auto& ulfsu = child(lfs, Dune::TypeTree::Indices::_0);
        // const auto& ulfsu = lfs;

        const unsigned int usize = ulfsu.child(0).size();
        std::cout.precision(17);
        Dune::PDELab::ElementGeometry<Element> eg(element);
        auto egg = eg.geometry();
        unsigned int intersection_index = 0;
        std::vector<std::vector<int>> matchMap;
        std::vector<int> matchTopMap;
        std::vector<int> matchButtomMap;
        std::vector<int> topMap;
        std::vector<int> buttomMap;
        Dune::FieldVector<double, 2>  topXip(0.0);
        Dune::FieldVector<double, 2>  buttomXip(0.0);
        Dune::FieldVector<double, 2>  topNormal(0.0);
        Dune::FieldVector<double, 2>  buttomNormal(0.0);


        for (const auto intersection : intersections(entitySet, element))
        {
            // std::cout << intersection_index << std::endl;
            std::vector<int> egMap;
            Dune::PDELab::IntersectionGeometry<Intersection> ig(intersection, intersection_index);
            auto igg = ig.geometry();
            auto global0 = igg.corner(0);
            auto global1 = igg.corner(1);


            for (int iic = 0; iic < igg.corners(); ++iic) {
                for (int iec = 0; iec < egg.corners(); ++iec) {
                    if (sqrt(pow(igg.corner(iic)[0] - egg.corner(iec)[0], 2) + pow(igg.corner(iic)[1] - egg.corner(iec)[1], 2)) < 1.e-8) {
                        egMap.push_back(iec);
                        break;
                    }
                }
            }

            if (sqrt(pow(global0[0] - global1[0], 2) + pow(global0[1] - global1[1], 2)) < 1.1e-5) {
                std::vector<int> matched;
                matched.push_back(egMap[0]);
                matched.push_back(egMap[1]);

                matchMap.push_back(matched);
                ++intersection_index;
                continue;
            }

            auto normal = ig.unitOuterNormal(0.5);

            if (fabs(normal[1]) < 1.e-4) {
                if (normal[0] < 0.0) {
                    topMap.push_back(egMap[0]);
                    topMap.push_back(egMap[1]);

                    topXip[0] = (egg.corner(topMap[0])[0] + egg.corner(topMap[1])[0]) / 2.0;
                    topXip[1] = (egg.corner(topMap[0])[1] + egg.corner(topMap[1])[1]) / 2.0;

                    topNormal = ig.unitOuterNormal(0.5);
                } else {
                    buttomMap.push_back(egMap[0]);
                    buttomMap.push_back(egMap[1]);

                    buttomXip[0] = (egg.corner(buttomMap[0])[0] + egg.corner(buttomMap[1])[0]) / 2.0;
                    buttomXip[1] = (egg.corner(buttomMap[0])[1] + egg.corner(buttomMap[1])[1]) / 2.0;

                    buttomNormal = ig.unitOuterNormal(0.5);
                }
            } else if (normal[1] > 0) {
                topMap.push_back(egMap[0]);
                topMap.push_back(egMap[1]);

                topXip[0] = (egg.corner(topMap[0])[0] + egg.corner(topMap[1])[0]) / 2.0;
                topXip[1] = (egg.corner(topMap[0])[1] + egg.corner(topMap[1])[1]) / 2.0;

                topNormal = ig.unitOuterNormal(0.5);
            } else {
                buttomMap.push_back(egMap[0]);
                buttomMap.push_back(egMap[1]);

                buttomXip[0] = (egg.corner(buttomMap[0])[0] + egg.corner(buttomMap[1])[0]) / 2.0;
                buttomXip[1] = (egg.corner(buttomMap[0])[1] + egg.corner(buttomMap[1])[1]) / 2.0;

                buttomNormal = ig.unitOuterNormal(0.5);
            }
            ++intersection_index;
        }

        if (std::find(topMap.begin(), topMap.end(), matchMap[0][0]) != topMap.end()) {
            matchTopMap.push_back(matchMap[0][0]);
            matchButtomMap.push_back(matchMap[0][1]);
        } else {
            matchButtomMap.push_back(matchMap[0][0]);
            matchTopMap.push_back(matchMap[0][1]);
        }

        if (std::find(topMap.begin(), topMap.end(), matchMap[1][0]) != topMap.end()) {
            matchTopMap.push_back(matchMap[1][0]);
            matchButtomMap.push_back(matchMap[1][1]);
        } else {
            matchButtomMap.push_back(matchMap[1][0]);
            matchTopMap.push_back(matchMap[1][1]);
        }
        double length = sqrt(pow(egg.corner(topMap[0])[0] - egg.corner(topMap[1])[0], 2) + pow(egg.corner(topMap[0])[1] - egg.corner(topMap[1])[1], 2));
        const ZeroThicknessUpdate zt_element(length, topMap, buttomMap, matchTopMap, matchButtomMap, topXip, buttomXip, topNormal, buttomNormal);

        const typename GFS::Ordering::Traits::DOFIndex& diTop0 = ulfsu.child(1).dofIndex(zt_element.matchTopMap[0]);
        typename GFS::Ordering::Traits::ContainerIndex ciTop0;
        ordering.mapIndex(diTop0.view(), ciTop0);
        const typename GFS::Ordering::Traits::DOFIndex& diTop1 = ulfsu.child(1).dofIndex(zt_element.matchTopMap[1]);
        typename GFS::Ordering::Traits::ContainerIndex ciTop1;
        ordering.mapIndex(diTop1.view(), ciTop1);

        const typename GFS::Ordering::Traits::DOFIndex& diButtom0 = ulfsu.child(1).dofIndex(zt_element.matchButtomMap[0]);
        typename GFS::Ordering::Traits::ContainerIndex ciButtom0;
        ordering.mapIndex(diButtom0.view(), ciButtom0);
        const typename GFS::Ordering::Traits::DOFIndex& diButtom1 = ulfsu.child(1).dofIndex(zt_element.matchButtomMap[1]);
        typename GFS::Ordering::Traits::ContainerIndex ciButtom1;
        ordering.mapIndex(diButtom1.view(), ciButtom1);

        double delta_node_0 = unew[ciTop0] * zt_element.topNormal[1]
                              + unew[ciButtom0] * zt_element.buttomNormal[1];

        double delta_node_1 = unew[ciTop1] * zt_element.topNormal[1]
                              + unew[ciButtom1] * zt_element.buttomNormal[1];

        double deltaIp = 0.5 * delta_node_0 + 0.5 * delta_node_1;

        double delta_new = deltaIp + delta_0;

        double delta_node_0_old = uold[ciTop0] * zt_element.topNormal[1]
                                  + uold[ciButtom0] * zt_element.buttomNormal[1];

        double delta_node_1_old = uold[ciTop1] * zt_element.topNormal[1]
                                  + uold[ciButtom1] * zt_element.buttomNormal[1];

        double deltaIp_old = 0.5 * delta_node_0_old + 0.5 * delta_node_1_old;

        double delta_old = deltaIp_old + delta_0;


        double k_normal = 0.0;

        if (delta_new < delta_max)
            delta_max = delta_new;

        double g = -(deltaIp + delta_0);
        double Kp = KP;

        if (contact_first) {
            if (g > (-DELTA_MIN)) {

                contact_flag = true;
                // lambda_p[idsindex] = Kp * g / 2.0;
                lambda_p[idsindex] = 0.0;
                el_contact[idsindex] = true;
            } else {
                lambda_p[idsindex] = 0.0;
                el_contact[idsindex] = false;
            }

        } else if (g > (-DELTA_MIN)) {
            contact_flag = true;
            el_contact[idsindex] = true;
            lambda_p[idsindex] += Kp * (g+DELTA_MIN);
        } else {
            lambda_p[idsindex] = lambda_p[idsindex];
        }
    }
    contact_first = false;
}
