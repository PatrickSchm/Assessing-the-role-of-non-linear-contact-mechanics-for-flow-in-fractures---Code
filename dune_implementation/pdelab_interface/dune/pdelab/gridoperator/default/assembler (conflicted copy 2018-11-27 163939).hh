#ifndef DUNE_PDELAB_GRIDOPERATOR_DEFAULT_ASSEMBLER_HH
#define DUNE_PDELAB_GRIDOPERATOR_DEFAULT_ASSEMBLER_HH

#include <dune/common/typetraits.hh>
#include <dune/pdelab/gridoperator/common/assemblerutilities.hh>
#include <dune/pdelab/gridfunctionspace/localfunctionspace.hh>
#include <dune/pdelab/gridfunctionspace/lfsindexcache.hh>
#include <dune/pdelab/common/geometrywrapper.hh>
#include <dune/pdelab/common/intersectiontype.hh>

namespace Dune {
namespace PDELab {

/**
   \brief The assembler for standard DUNE grid

   * \tparam GFSU GridFunctionSpace for ansatz functions
   * \tparam GFSV GridFunctionSpace for test functions
   */


class ZeroThickness {
public:
  ZeroThickness (double area_,
                 int topIndx_,
                 int butIndx_,
                 std::vector<int> intersection_index_,
                 std::vector<int> topMap_,
                 std::vector<int> buttomMap_,
                 std::vector<int> matchTopMap_,
                 std::vector<int> matchButtomMap_,
                 Dune::FieldVector<double, 2> topXip_,
                 Dune::FieldVector<double, 2> buttomXip_,
                 Dune::FieldVector<double, 2> topNormal_,
                 Dune::FieldVector<double, 2> buttomNormal_)
    : geoFactor(area_), topIndx(topIndx_), butIndx(butIndx_), intersection_index(intersection_index_), matchTopMap(matchTopMap_), matchButtomMap(matchButtomMap_), topMap(topMap_),
      buttomMap(buttomMap_), topXip(topXip_),
      buttomXip(buttomXip_), topNormal(topNormal_),
      buttomNormal(buttomNormal_) {}
public:
  double geoFactor;
  int topIndx ;
  int butIndx ;
  std::vector<int> intersection_index;


  std::vector<int> matchTopMap;
  std::vector<int> matchButtomMap;
  std::vector<int> topMap;
  std::vector<int> buttomMap;


  Dune::FieldVector<double, 2> topXip;
  Dune::FieldVector<double, 2> buttomXip;

  Dune::FieldVector<double, 2> topNormal;
  Dune::FieldVector<double, 2> buttomNormal;

  int active_inter = -1;
};



template<typename GFSU, typename GFSV, typename CU, typename CV, typename Grid, typename EIdx , typename BIdx = std::vector<int>>
class DefaultAssembler {
public:

  //! Types related to current grid view
  //! @{
  using EntitySet = typename GFSU::Traits::EntitySet;
  using Element = typename EntitySet::Element;
  using Intersection = typename EntitySet::Intersection;
  //! @}

  //! Grid function spaces
  //! @{
  typedef GFSU TrialGridFunctionSpace;
  typedef GFSV TestGridFunctionSpace;
  //! @}

  //! Size type as used in grid function space
  typedef typename GFSU::Traits::SizeType SizeType;

  //! Static check on whether this is a Galerkin method
  static const bool isGalerkinMethod = std::is_same<GFSU, GFSV>::value;

  DefaultAssembler (const GFSU& gfsu_, const GFSV& gfsv_, const CU& cu_,
                    const CV& cv_, const Grid grid_, EIdx& element_id_,
                    BIdx& boundary_id_)
    : gfsu(gfsu_)
    , gfsv(gfsv_)
    , grid(grid_)
    , element_id(element_id_)
    , boundary_id(boundary_id_)
    , cu(cu_)
    , cv(cv_)
    , lfsu(gfsu_)
    , lfsv(gfsv_)
    , lfsun(gfsu_)
    , lfsvn(gfsv_)
  { }

  DefaultAssembler (const GFSU& gfsu_, const GFSV& gfsv_)
    : gfsu(gfsu_)
    , gfsv(gfsv_)
    , element_id()
    , boundary_id()
    , cu()
    , cv()
    , lfsu(gfsu_)
    , lfsv(gfsv_)
    , lfsun(gfsu_)
    , lfsvn(gfsv_)
  { }

  //! Get the trial grid function space
  const GFSU& trialGridFunctionSpace() const
  {
    return gfsu;
  }

  //! Get the test grid function space
  const GFSV& testGridFunctionSpace() const
  {
    return gfsv;
  }

  // Assembler (const GFSU& gfsu_, const GFSV& gfsv_)
  //   : gfsu(gfsu_), gfsv(gfsv_), lfsu(gfsu_), lfsv(gfsv_),
  //     lfsun(gfsu_), lfsvn(gfsv_),
  //     sub_triangulation(ST(gfsu_.gridview(),Dune::PDELab::NoSubTriangulationImp()))
  // { }

  template<class LocalAssemblerEngine>
  void assemble(LocalAssemblerEngine & assembler_engine) const
  {
    typedef LFSIndexCache<LFSU, CU> LFSUCache;

    typedef LFSIndexCache<LFSV, CV> LFSVCache;

    const bool needs_constraints_caching = assembler_engine.needsConstraintsCaching(cu, cv);

    LFSUCache lfsu_cache(lfsu, cu, needs_constraints_caching);
    LFSVCache lfsv_cache(lfsv, cv, needs_constraints_caching);
    LFSUCache lfsun_cache(lfsun, cu, needs_constraints_caching);
    LFSVCache lfsvn_cache(lfsvn, cv, needs_constraints_caching);

    // Notify assembler engine about oncoming assembly
    assembler_engine.preAssembly();

    // Extract integration requirements from the local assembler
    const bool require_uv_skeleton = assembler_engine.requireUVSkeleton();
    const bool require_v_skeleton = assembler_engine.requireVSkeleton();
    const bool require_uv_boundary = assembler_engine.requireUVBoundary();
    const bool require_v_boundary = assembler_engine.requireVBoundary();
    const bool require_uv_processor = assembler_engine.requireUVBoundary();
    const bool require_v_processor = assembler_engine.requireVBoundary();
    const bool require_uv_post_skeleton = assembler_engine.requireUVVolumePostSkeleton();
    const bool require_v_post_skeleton = assembler_engine.requireVVolumePostSkeleton();
    const bool require_skeleton_two_sided = assembler_engine.requireSkeletonTwoSided();

    auto entity_set = gfsu.entitySet();
    // auto gv = gfsu.gridView();
    // auto grid = gv.grid();
    auto& index_set = entity_set.indexSet();
    const auto &lis = grid->localIdSet();
    // Traverse grid view
    for (const auto& element : elements(entity_set))
    {
      // Compute unique id
      auto ids = index_set.uniqueIndex(element);
      auto idsindex = index_set.index(element);
      int iMat = element_id[lis.id(element)];

      ElementGeometry<Element> eg(element);

      if (assembler_engine.assembleCell(eg))
        continue;

      // Bind local test function space to element
      lfsv.bind( element );
      lfsv_cache.update();

      // Notify assembler engine about bind
      assembler_engine.onBindLFSV(eg, lfsv_cache);

      // Volume integration
      assembler_engine.assembleVVolume(eg, lfsv_cache);

      // Bind local trial function space to element
      lfsu.bind( element );
      lfsu_cache.update();

      // Notify assembler engine about bind
      assembler_engine.onBindLFSUV(eg, lfsu_cache, lfsv_cache);

      // Load coefficients of local functions
      assembler_engine.loadCoefficientsLFSUInside(lfsu_cache);

      // Volume integration
      // Dune::FieldVector<double, 2>  ip(0.0);
      // ip[0] = 0.5;
      // ip[1] = 0.5;
      // if ( eg.geometry().integrationElement(ip) > 1.e-8) {
      if ( iMat < 1000) {
        assembler_engine.assembleUVVolume(eg, lfsu_cache, lfsv_cache, iMat);
      } else
      {
        std::vector<int> indices;
        indices.push_back(idsindex);
        indices.push_back(iMat);
        ZeroThickness zt_element = setInterface(entity_set, element);

        // assembler_engine.assembleZeroThickness(eg, zt_element, lfsu_cache, lfsv_cache, indices);
        unsigned int intersection_index = 0;
        for (const auto& intersection : intersections(entity_set, element))
        {
          if (zt_element.topIndx == intersection_index) {
            IntersectionGeometry<Intersection> ig(intersection, intersection_index);
            auto geos = std::make_tuple(eg, ig);

            zt_element.active_inter = intersection_index;
            // std::cout << "assembler: " << zt_element.topIndx << " " << zt_element.butIndx << std::endl;
            assembler_engine.assembleZeroThickness(geos, zt_element, lfsu_cache, lfsv_cache, indices);
          }
          intersection_index++;
        }
      }

      // Skip if no intersection iterator is needed
      if (require_uv_skeleton || require_v_skeleton ||
          require_uv_boundary || require_v_boundary ||
          require_uv_processor || require_v_processor)
      {
        // Traverse intersections
        unsigned int intersection_index = 0;
        for (const auto& intersection : intersections(entity_set, element))
        {

          IntersectionGeometry<Intersection> ig(intersection, intersection_index);

          auto intersection_data = classifyIntersection(entity_set, intersection);
          auto intersection_type = std::get<0>(intersection_data);
          auto& outside_element = std::get<1>(intersection_data);

          switch (intersection_type)
          {
          case IntersectionType::skeleton:
          // the specific ordering of the if-statements in the old code caused periodic
          // boundary intersection to be handled the same as skeleton intersections
          case IntersectionType::periodic:
            if (require_uv_skeleton || require_v_skeleton)
            {
              // compute unique id for neighbor

              auto idn = index_set.uniqueIndex(outside_element);

              // Visit face if id is bigger
              bool visit_face = ids > idn || require_skeleton_two_sided;

              // unique vist of intersection
              if (visit_face)
              {
                // Bind local test space to neighbor element
                lfsvn.bind(outside_element);
                lfsvn_cache.update();

                // Notify assembler engine about binds
                assembler_engine.onBindLFSVOutside(ig, lfsv_cache, lfsvn_cache);

                // Skeleton integration
                assembler_engine.assembleVSkeleton(ig, lfsv_cache, lfsvn_cache);

                if (require_uv_skeleton) {

                  // Bind local trial space to neighbor element
                  lfsun.bind(outside_element);
                  lfsun_cache.update();

                  // Notify assembler engine about binds
                  assembler_engine.onBindLFSUVOutside(ig,
                                                      lfsu_cache, lfsv_cache,
                                                      lfsun_cache, lfsvn_cache);

                  // Load coefficients of local functions
                  assembler_engine.loadCoefficientsLFSUOutside(lfsun_cache);

                  // Skeleton integration
                  assembler_engine.assembleUVSkeleton(ig, lfsu_cache, lfsv_cache, lfsun_cache, lfsvn_cache);

                  // Notify assembler engine about unbinds
                  assembler_engine.onUnbindLFSUVOutside(ig,
                                                        lfsu_cache, lfsv_cache,
                                                        lfsun_cache, lfsvn_cache);
                }

                // Notify assembler engine about unbinds
                assembler_engine.onUnbindLFSVOutside(ig, lfsv_cache, lfsvn_cache);
              }
            }
            break;

          case IntersectionType::boundary:
            if (require_uv_boundary || require_v_boundary )
            {

              // Boundary integration
              assembler_engine.assembleVBoundary(ig, lfsv_cache);

              if (require_uv_boundary) {
                // Boundary integration
                assembler_engine.assembleUVBoundary(ig, lfsu_cache, lfsv_cache);
              }
            }
            break;

          case IntersectionType::processor:
            if (require_uv_processor || require_v_processor )
            {

              // Processor integration
              assembler_engine.assembleVProcessor(ig, lfsv_cache);

              if (require_uv_processor) {
                // Processor integration
                assembler_engine.assembleUVProcessor(ig, lfsu_cache, lfsv_cache);
              }
            }
            break;
          } // switch

          ++intersection_index;
        } // iit
      } // do skeleton

      if (require_uv_post_skeleton || require_v_post_skeleton) {
        // Volume integration
        assembler_engine.assembleVVolumePostSkeleton(eg, lfsv_cache);

        if (require_uv_post_skeleton) {
          // Volume integration
          assembler_engine.assembleUVVolumePostSkeleton(eg, lfsu_cache, lfsv_cache);
        }
      }

      // Notify assembler engine about unbinds
      assembler_engine.onUnbindLFSUV(eg, lfsu_cache, lfsv_cache);

      // Notify assembler engine about unbinds
      assembler_engine.onUnbindLFSV(eg, lfsv_cache);

    } // it

    // Notify assembler engine that assembly is finished
    assembler_engine.postAssembly(gfsu, gfsv);

  }

private:

  template<typename ES, typename E>
  const ZeroThickness setInterface(const ES& entity_set, const E& element) const {
    double dimWorld = Intersection::dimensionworld;

    std::cout.precision(17);
    ElementGeometry<Element> eg(element);
    auto egg = eg.geometry();
    unsigned int intersection_index = 0;
    std::vector<std::vector<int>> matchMap;
    std::vector<int> matchTopMap;
    std::vector<int> matchButtomMap;
    std::vector<int> topMap;
    std::vector<int> buttomMap;
    // Dune::FieldVector<double, 3>  topXip(0.0);
    // Dune::FieldVector<double, 3>  buttomXip(0.0);
    // Dune::FieldVector<double, 3>  topNormal(0.0);
    // Dune::FieldVector<double, 3>  buttomNormal(0.0);

    Dune::FieldVector<double, 2>  topXip(0.0);
    Dune::FieldVector<double, 2>  buttomXip(0.0);
    Dune::FieldVector<double, 2>  topNormal(0.0);
    Dune::FieldVector<double, 2>  buttomNormal(0.0);

    int topIndx_ = -1;
    int butIndx_ = -1;
    double area = -1;

    double dist = 1.e-2;
    
    std::vector<int> intersection_index_;

    if (dimWorld == 2) {

      for (const auto intersection : intersections(entity_set, element))
      {
        // std::cout << intersection_index << std::endl;
        std::vector<int> egMap;
        IntersectionGeometry<Intersection> ig(intersection, intersection_index);
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

        if (sqrt(pow(global0[0] - global1[0], 2) + pow(global0[1] - global1[1], 2)) < dist) {
          std::vector<int> matched;
          matched.push_back(egMap[0]);
          matched.push_back(egMap[1]);

          matchMap.push_back(matched);
          ++intersection_index;
          continue;
        }
        double  normal_position = 0.5;

        auto normal = ig.unitOuterNormal(normal_position);

        if (fabs(normal[1]) < 2.e-3) {
          if (normal[0] < 0.0) {
            topMap.push_back(egMap[0]);
            topMap.push_back(egMap[1]);

            topXip[0] = (egg.corner(topMap[0])[0] + egg.corner(topMap[1])[0]) / 2.0;
            topXip[1] = (egg.corner(topMap[0])[1] + egg.corner(topMap[1])[1]) / 2.0;

            topNormal = ig.unitOuterNormal(normal_position);
            topIndx_ = intersection_index;
          } else {
            buttomMap.push_back(egMap[0]);
            buttomMap.push_back(egMap[1]);

            buttomXip[0] = (egg.corner(buttomMap[0])[0] + egg.corner(buttomMap[1])[0]) / 2.0;
            buttomXip[1] = (egg.corner(buttomMap[0])[1] + egg.corner(buttomMap[1])[1]) / 2.0;

            buttomNormal = ig.unitOuterNormal(normal_position);
            butIndx_ = intersection_index;

          }
        } else if (normal[1] > 0) {
          topMap.push_back(egMap[0]);
          topMap.push_back(egMap[1]);

          topXip[0] = (egg.corner(topMap[0])[0] + egg.corner(topMap[1])[0]) / 2.0;
          topXip[1] = (egg.corner(topMap[0])[1] + egg.corner(topMap[1])[1]) / 2.0;

          topNormal = ig.unitOuterNormal(normal_position);
          topIndx_ = intersection_index;
        } else {
          buttomMap.push_back(egMap[0]);
          buttomMap.push_back(egMap[1]);

          buttomXip[0] = (egg.corner(buttomMap[0])[0] + egg.corner(buttomMap[1])[0]) / 2.0;
          buttomXip[1] = (egg.corner(buttomMap[0])[1] + egg.corner(buttomMap[1])[1]) / 2.0;

          buttomNormal = ig.unitOuterNormal(normal_position);
          butIndx_ = intersection_index;

        }
        intersection_index_.push_back(intersection_index);
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
      // const ZeroThickness zt_element(length, topMap, buttomMap, matchTopMap, matchButtomMap, topXip, buttomXip, topNormal, buttomNormal);
      const ZeroThickness zt_element(length, topIndx_, butIndx_, intersection_index_, topMap, buttomMap, matchTopMap, matchButtomMap, topXip, buttomXip, topNormal, buttomNormal);

      return zt_element;
    } else if (dimWorld == 3) {
      // Dune::FieldVector<double, 2>  normal_position(0.0);
      // normal_position[0] = 0.5;
      // normal_position[1] = 0.5;


      // for (const auto intersection : intersections(entity_set, element))
      // {

      //   std::vector<int> egMap;
      //   IntersectionGeometry<Intersection> ig(intersection, intersection_index);


      //   auto igg = ig.geometry();
      //   auto global0 = igg.corner(0);
      //   auto global1 = igg.corner(1);
      //   auto global2 = igg.corner(2);
      //   auto global3 = igg.corner(3);

      //   for (int iic = 0; iic < igg.corners(); ++iic) {
      //     for (int iec = 0; iec < egg.corners(); ++iec) {
      //       if (sqrt(pow(igg.corner(iic)[0] - egg.corner(iec)[0], 2) + pow(igg.corner(iic)[1] - egg.corner(iec)[1], 2) + pow(igg.corner(iic)[2] - egg.corner(iec)[2], 2)) < 1.e-8) {
      //         egMap.push_back(iec);
      //         break;
      //       }
      //     }
      //   }

      //   if (sqrt(pow(global0[0] - global1[0], 2) + pow(global0[1] - global1[1], 2) + pow(global0[2] - global1[2], 2)) < 1.1e-1) {
      //     std::vector<int> matched;
      //     matched.push_back(egMap[0]);
      //     matched.push_back(egMap[1]);

      //     matchMap.push_back(matched);
      //     ++intersection_index;
      //     continue;
      //   } else if (sqrt(pow(global0[0] - global2[0], 2) + pow(global0[1] - global2[1], 2) + pow(global0[2] - global2[2], 2)) < 1.1e-1) {
      //     std::vector<int> matched;
      //     matched.push_back(egMap[0]);
      //     matched.push_back(egMap[2]);

      //     matchMap.push_back(matched);
      //     ++intersection_index;
      //     continue;
      //   } else if (sqrt(pow(global0[0] - global3[0], 2) + pow(global0[1] - global3[1], 2) + pow(global0[2] - global3[2], 2)) < 1.1e-1) {
      //     std::vector<int> matched;
      //     matched.push_back(egMap[0]);
      //     matched.push_back(egMap[3]);

      //     matchMap.push_back(matched);
      //     ++intersection_index;
      //     continue;
      //   }

      //   area = igg.integrationElement(normal_position);

      //   auto normal = ig.centerUnitOuterNormal();

      //   if (fabs(normal[1]) < 1.e-2) {
      //     if (fabs(normal[0]) < 1.e-2) {
      //       // if (normal[2] > 0.0) {
      //       if (egg.corner(egMap[0])[2] > 500.0) {

      //         topMap.push_back(egMap[0]);
      //         topMap.push_back(egMap[1]);
      //         topMap.push_back(egMap[2]);
      //         topMap.push_back(egMap[3]);

      //         topNormal = ig.centerUnitOuterNormal();
      //         topIndx_ = intersection_index;

      //       } else {

      //         buttomMap.push_back(egMap[0]);
      //         buttomMap.push_back(egMap[1]);
      //         buttomMap.push_back(egMap[2]);
      //         buttomMap.push_back(egMap[3]);

      //         buttomNormal = ig.centerUnitOuterNormal();
      //         butIndx_ = intersection_index;
      //       }
      //     }
      //   }
      //   intersection_index_.push_back(intersection_index);
      //   ++intersection_index;
      // }



      // if (std::find(topMap.begin(), topMap.end(), matchMap[0][0]) != topMap.end()) {
      //   matchTopMap.push_back(matchMap[0][0]);
      //   matchButtomMap.push_back(matchMap[0][1]);
      // } else {
      //   matchButtomMap.push_back(matchMap[0][0]);
      //   matchTopMap.push_back(matchMap[0][1]);
      // }

      // if (std::find(topMap.begin(), topMap.end(), matchMap[1][0]) != topMap.end()) {
      //   matchTopMap.push_back(matchMap[1][0]);
      //   matchButtomMap.push_back(matchMap[1][1]);
      // } else {
      //   matchButtomMap.push_back(matchMap[1][0]);
      //   matchTopMap.push_back(matchMap[1][1]);
      // }

      // if (std::find(topMap.begin(), topMap.end(), matchMap[2][0]) != topMap.end()) {
      //   matchTopMap.push_back(matchMap[2][0]);
      //   matchButtomMap.push_back(matchMap[2][1]);
      // } else {
      //   matchButtomMap.push_back(matchMap[2][0]);
      //   matchTopMap.push_back(matchMap[2][1]);
      // }

      // if (std::find(topMap.begin(), topMap.end(), matchMap[3][0]) != topMap.end()) {
      //   matchTopMap.push_back(matchMap[3][0]);
      //   matchButtomMap.push_back(matchMap[3][1]);
      // } else {
      //   matchButtomMap.push_back(matchMap[3][0]);
      //   matchTopMap.push_back(matchMap[3][1]);
      // }
    }

    const ZeroThickness zt_element(area, topIndx_, butIndx_, intersection_index_, topMap, buttomMap, matchTopMap, matchButtomMap, topXip, buttomXip, topNormal, buttomNormal);

    return zt_element;
  }

  /* global function spaces */
  const GFSU& gfsu;
  const GFSV& gfsv;
  const Grid& grid;
  EIdx& element_id;
  BIdx& boundary_id;
  typename std::conditional <
  std::is_same<CU, EmptyTransformation>::value,
      const CU,
      const CU&
      >::type cu;
  typename std::conditional <
  std::is_same<CV, EmptyTransformation>::value,
      const CV,
      const CV&
      >::type cv;

  /* local function spaces */
  typedef LocalFunctionSpace<GFSU, TrialSpaceTag> LFSU;
  typedef LocalFunctionSpace<GFSV, TestSpaceTag> LFSV;
  // local function spaces in local cell
  mutable LFSU lfsu;
  mutable LFSV lfsv;
  // local function spaces in neighbor
  mutable LFSU lfsun;
  mutable LFSV lfsvn;

};

}
}
#endif // DUNE_PDELAB_GRIDOPERATOR_DEFAULT_ASSEMBLER_HH
