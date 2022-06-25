struct IPHV
{
    int iEl = -1;
    int iIp = -1;
    std::vector<double> coord{0.0, 0.0, 0.0};
    std::map<std::string, std::map<std::string, double>> hisVars;
};

template <typename T>
std::string to_string_with_precision(const T a_value, const int n = 15)
{
    std::ostringstream out;
    out.precision(n);
    out << std::fixed << a_value;
    return out.str();
}

// ATTENTION!!! - DIMESNION FOR QUADRATURE RULE HARD CODED!!!
class InternalVariables
{
public:
    static InternalVariables &getInstance()
    {
        static InternalVariables instance; // Guaranteed to be destroyed.
        // Instantiated on first use.
        return instance;
    }

private:
    InternalVariables() {} // Constructor? (the {} brackets) are needed here.
    std::map<int, std::map<int, IPHV>> historyVariables;
    int iVertex = 0;
    std::map<std::string, int> vertexMap;
    std::vector<std::vector<int>> conecElement;
    std::vector<std::vector<double>> vertices;
    std::vector<int> elementMapping;
    int max_iip = -1;

public:
    InternalVariables(InternalVariables const &) = delete;
    void operator=(InternalVariables const &) = delete;

    template <typename GFS, typename GRID, typename EID>
    void setHistoryVariables(const GFS &gfs, const GRID &grid, EID &element_flags, std::vector<std::string> intVarNames,
                             std::string outPath, std::string outFn)
    {
        std::cout.precision(15);
        typedef Dune::PDELab::LocalFunctionSpace<GFS> LFSU;

        using namespace Dune::TypeTree::Indices;
        using UGLFSU = Dune::TypeTree::Child<LFSU, Dune::TypeTree::Indices::_0>;
        using ULFSU = Dune::TypeTree::Child<UGLFSU, Dune::TypeTree::Indices::_0>;
        typedef typename ULFSU::Traits::FiniteElementType::Traits::LocalBasisType::Traits::DomainFieldType DF;

        using EntitySet = typename GFS::Traits::EntitySet;
        using Element = typename EntitySet::Element;
        using Intersection = typename EntitySet::Intersection;

        const typename GFS::Ordering &ordering = gfs.ordering();
        auto gv = gfs.gridView();

        LFSU lfs(gfs);

        auto entitySet = gfs.entitySet();
        auto &indexSet = entitySet.indexSet();
        std::vector<bool> updated;
        updated.resize(gv.size(2));
        double dist = 1.e-2;
        const auto &lis = grid->localIdSet();

        for (const auto &element : elements(entitySet))
        {
            lfs.bind(element);
            long unsigned int idsindex = indexSet.index(element);
            int iMat = element_flags[lis.id(element)];

            if (iMat < 1000)
                continue;

            std::cout << "here" << std::endl;

            const auto &ulfsu = child(lfs, Dune::TypeTree::Indices::_0);

            const unsigned int usize = ulfsu.child(0).size();

            Dune::PDELab::ElementGeometry<Element> eg(element);
            auto egg = eg.geometry();
            unsigned int intersection_index = -1;
            std::vector<std::vector<int>> matchMap;
            std::vector<int> matchTopMap;
            std::vector<int> matchButtomMap;
            std::vector<int> topMap;
            std::vector<int> buttomMap;

            Dune::FieldVector<double, 2> topXip(0.0);
            Dune::FieldVector<double, 2> buttomXip(0.0);
            Dune::FieldVector<double, 2> topNormal(0.0);
            Dune::FieldVector<double, 2> buttomNormal(0.0);

            int topIndx_ = -1;
            int butIndx_ = -1;
            double area = -1;

            std::vector<int> intersection_index_;
            Dune::FieldVector<double, 2> normal_position(0.0);
            normal_position[0] = 0.5;
            normal_position[1] = 0.5;

            int found_surface = 0;

            for (const auto intersection : intersections(entitySet, element))
            {
                std::map<int, IPHV> dummyIPMap;

                // std::cout << intersection_index << std::endl;
                std::vector<int> egMap;
                Dune::PDELab::IntersectionGeometry<Intersection> ig(intersection, intersection_index);
                auto igg = ig.geometry();
                auto global0 = igg.corner(0);
                auto global1 = igg.corner(1);

                for (int iic = 0; iic < igg.corners(); ++iic)
                {
                    for (int iec = 0; iec < egg.corners(); ++iec)
                    {
                        if (sqrt(pow(igg.corner(iic)[0] - egg.corner(iec)[0], 2) + pow(igg.corner(iic)[1] - egg.corner(iec)[1], 2)) < 1.e-9)
                        {
                            egMap.push_back(iec);
                            break;
                        }
                    }
                }
                if (sqrt(pow(global0[0] - global1[0], 2) + pow(global0[1] - global1[1], 2)) < dist)
                {
                    std::vector<int> matched;
                    matched.push_back(egMap[0]);
                    matched.push_back(egMap[1]);

                    matchMap.push_back(matched);
                    ++intersection_index;
                    continue;
                }
                double normal_position = 0.5;

                auto normal = ig.unitOuterNormal(normal_position);

                if (fabs(normal[1]) < 2.e-4)
                {
                    if (normal[0] < 0.0)
                    {
                        auto gtface = ig.geometryInInside().type();

                        int qorder = QORDER;

                        const Dune::QuadratureRule<DF, 1> &rule = Dune::QuadratureRules<DF,
                                                                                        1>::rule(gtface, qorder);
                        int iip = 0;
                        std::vector<int> conec;

                        conec.push_back(add_to_vertex_map(global0));
                        conec.push_back(add_to_vertex_map(global1));

                        conecElement.push_back(conec);
                        elementMapping.push_back(idsindex);

                        for (typename Dune::QuadratureRule<DF, 1>::const_iterator ip = rule.begin(); ip != rule.end(); ++ip)
                        {
                            if (iip > max_iip)
                            {
                                max_iip = iip;
                            }
                            Dune::FieldVector<DF, 2> xG = ig.geometry().global(
                                ip->position());

                            IPHV ipHV;
                            ipHV.coord[0] = xG[0];
                            ipHV.coord[1] = xG[1];
                            ipHV.coord[2] = 0.0;

                            ipHV.iEl = idsindex;
                            ipHV.iIp = iip;
                            for (int iName = 0; iName < intVarNames.size(); iName++)
                            {
                                std::string activeName = intVarNames[iName];
                                std::map<std::string, double> dummyMap;
                                dummyMap.insert(std::pair<std::string, double>("old", 0.0));
                                dummyMap.insert(std::pair<std::string, double>("new", 0.0));

                                ipHV.hisVars.insert(std::pair<std::string, std::map<std::string, double>>(activeName, dummyMap));
                            }
                            dummyIPMap.insert(std::pair<int, IPHV>(iip, ipHV));
                            iip++;
                        }
                        historyVariables.insert(std::pair<int, std::map<int, IPHV>>(idsindex, dummyIPMap));

                        std::string outFnVertices = outPath + outFn + "_lower_dim_vertices" + ".txt";

                        std::ofstream outFile(outFnVertices);
                        for (const auto &vertex : vertices)
                            outFile << vertex[0] << " " << vertex[1] << " " << 0.0 << "\n";

                        std::string outFnConec = outPath + outFn + "_lower_dim_el_conec" + ".txt";
                        std::ofstream outFileConec(outFnConec);
                        for (const auto &conec : conecElement)
                            outFileConec << conec[0] << " " << conec[1] << "\n";

                        std::string outFnElMap = outPath + outFn + "_lower_dim_el_map" + ".txt";
                        std::ofstream outFileElMap(outFnElMap);
                        for (const auto &map : elementMapping)
                            outFileElMap << map << "\n";

                        break;
                    }
                }
                else if (normal[1] > 0)
                {
                    auto gtface = ig.geometryInInside().type();

                    int qorder = QORDER;

                    const Dune::QuadratureRule<DF, 1> &rule = Dune::QuadratureRules<DF,
                                                                                    1>::rule(gtface, qorder);
                    std::vector<int> conec;

                    conec.push_back(add_to_vertex_map(global0));
                    conec.push_back(add_to_vertex_map(global1));

                    conecElement.push_back(conec);
                    elementMapping.push_back(idsindex);

                    int iip = 0;
                    for (typename Dune::QuadratureRule<DF, 1>::const_iterator ip = rule.begin(); ip != rule.end(); ++ip)
                    {

                        if (iip > max_iip)
                        {
                            max_iip = iip;
                        }
                        Dune::FieldVector<DF, 2> xG = ig.geometry().global(
                            ip->position());

                        IPHV ipHV;
                        ipHV.coord[0] = xG[0];
                        ipHV.coord[1] = xG[1];
                        ipHV.coord[2] = 0.0;

                        ipHV.iEl = idsindex;
                        ipHV.iIp = iip;
                        for (int iName = 0; iName < intVarNames.size(); iName++)
                        {
                            std::string activeName = intVarNames[iName];
                            std::map<std::string, double> dummyMap;
                            dummyMap.insert(std::pair<std::string, double>("old", 0.0));
                            dummyMap.insert(std::pair<std::string, double>("new", 0.0));

                            ipHV.hisVars.insert(std::pair<std::string, std::map<std::string, double>>(activeName, dummyMap));
                        }
                        dummyIPMap.insert(std::pair<int, IPHV>(iip, ipHV));
                        iip++;
                    }
                    historyVariables.insert(std::pair<int, std::map<int, IPHV>>(idsindex, dummyIPMap));

                    std::string outFnVertices = outPath + outFn + "_lower_dim_vertices" + ".txt";

                    std::ofstream outFile(outFnVertices);
                    for (const auto &vertex : vertices)
                        outFile << vertex[0] << " " << vertex[1] << " " << 0.0 << "\n";

                    std::string outFnConec = outPath + outFn + "_lower_dim_el_conec" + ".txt";
                    std::ofstream outFileConec(outFnConec);
                    for (const auto &conec : conecElement)
                        outFileConec << conec[0] << " " << conec[1] << "\n";

                    std::string outFnElMap = outPath + outFn + "_lower_dim_el_map" + ".txt";
                    std::ofstream outFileElMap(outFnElMap);
                    for (const auto &map : elementMapping)
                        outFileElMap << map << "\n";

                    break;
                }

                ++intersection_index;
            }
        }
    }

    int add_to_vertex_map(Dune::FieldVector<double, 2> xG)
    {
        char node_dummy[100];
        sprintf(node_dummy, "%1.7f%1.7f", xG[0], xG[1]);

        std::string node_tag = node_dummy;
        node_tag.erase(1, 1);
        node_tag.erase(9, 1);

        std::vector<double> coords(2);
        coords[0] = xG[0];
        coords[1] = xG[1];

        if (vertexMap.find(node_tag) == vertexMap.end())
        {
            vertexMap.insert(std::pair<std::string, int>(node_tag, iVertex));
            iVertex++;
            vertices.push_back(coords);
            return iVertex - 1;
        }
        else
        {
            return vertexMap[node_tag];
        }
    }

    double getNew(int idxEl, int iip, std::string varName)
    {
        check(idxEl, iip, varName);
        return historyVariables[idxEl][iip].hisVars[varName]["new"];
    }
    double getOld(int idxEl, int iip, std::string varName)
    {
        check(idxEl, iip, varName);
        return historyVariables[idxEl][iip].hisVars[varName]["old"];
    }

    void set(int idxEl, int iip, std::string varName, double value)
    {
        check(idxEl, iip, varName);
        historyVariables[idxEl][iip].hisVars[varName]["new"] = value;
    }

    void update()
    {

        for (auto const &[iEl, elMapHV] : historyVariables)
        {
            for (auto const &[iip, ipMapHV] : elMapHV)
            {
                for (auto const &[name, hv] : ipMapHV.hisVars)
                {
                    historyVariables[iEl][iip].hisVars[name]["old"] = historyVariables[iEl][iip].hisVars[name]["new"];
                }
            }
        }
    }

    void write_output(int tStep, double time, std::string outPath, std::string outFn)
    {
        outFn = outPath + outFn + "_iip_" + to_string_with_precision(tStep) + ".json";

        std::ofstream ofs(outFn);
        ofs.precision(12);
        std::string nl = "\n";
        ofs << "{" + nl;
        ofs << "\"time\":" + to_string_with_precision(time) + "," + nl;
        ofs << "\"element_data\":{" + nl;

        // populate map.
        int iEl = 0;
        for (auto const &[idxEl, elMapHV] : historyVariables)
        {
            ofs << "\"" + to_string_with_precision(idxEl) + "\" : " + "{" + nl;
            ofs << "\"ips\": {" + nl;
            for (auto const &[iip, ipMapHV] : elMapHV)
            {

                ofs << "\"" + to_string_with_precision(iip) + "\" : " + "{" + nl;
                ofs << "\"coord\": [" + to_string_with_precision(ipMapHV.coord[0]) + "," + to_string_with_precision(ipMapHV.coord[1]) + "," + to_string_with_precision(ipMapHV.coord[2]) + "]" + "," + nl;
                ofs << "\"hv\": {" + nl;
                int iName = 0;
                for (auto const &[name, hv] : ipMapHV.hisVars)
                {
                    ofs << "\"" + name + "\": {" + nl;
                    ofs << "\"old\": " + to_string_with_precision(historyVariables[idxEl][iip].hisVars[name]["old"]) + "," + nl;
                    ofs << "\"new\": " + to_string_with_precision(historyVariables[idxEl][iip].hisVars[name]["new"]) + nl;

                    historyVariables[idxEl][iip].hisVars[name]["old"] = historyVariables[idxEl][iip].hisVars[name]["new"];

                    if (iName == ipMapHV.hisVars.size() - 1)
                    {
                        ofs << "}" + nl;
                    }
                    else
                    {
                        ofs << "}," + nl;
                    }
                    iName++;
                }
                ofs << "}" + nl;
                if (iip == elMapHV.size() - 1)
                {
                    ofs << "}" + nl;
                }
                else
                {
                    ofs << "}," + nl;
                }
            }
            ofs << "}" + nl;

            if (iEl == historyVariables.size() - 1)
            {
                ofs << "}" + nl;
            }
            else
            {
                ofs << "}," + nl;
            }
            iEl++;
        }
        ofs << "}" + nl;
        ofs << "}";
    }

private:
    void check(int idxEl, int iip, std::string varName)
    {
        if (historyVariables[idxEl][0].hisVars.find(varName) == historyVariables[idxEl][0].hisVars.end())
        {
            std::cerr << "Could not find internal variable: " + varName + "\n";
            std::terminate();
        }

        if (iip > max_iip)
        {
            std::cerr << "Given integration Point number exceeding defined IIPs: " + to_string_with_precision(iip) + "\n";
            std::terminate();
        }
    }
};