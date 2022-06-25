//||===========================================================================================||
//||    Author:       Patrick Schmidt                                                          ||
//||    Date:         22.08.2016                                                               ||
//||    Name:         poroelastic.cc                                                           ||
//||    Description:  File starts main function; Reads input and mesh files; Sets up           ||
//||                  GridGlue and Gridview; Calls Simulation                                  ||
//||===========================================================================================||
#define TIME1 500.0
#define TIME2 1000.0
#define VFAC 1
double TIME_NOW = 0.0;
double QORDER = 2;
// #define EIGEN_USE_MKL_ALL

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#define FN_ELEMENT "/home/patrick/pkg/dune_2d/implementation_interface/localoperator/2D/hybrid_dimensional/hybrid_dimensional_ax_nonlinear_div_normal_stiffness.hh"
#define FN_ELEMENT_T "/home/patrick/pkg/dune_2d/implementation_interface/localoperator/2D/hybrid_dimensional/hybrid_dimensional_ax_nonlinear_t_div.hh"
#define FN_SIMULATION "/home/patrick/pkg/dune_2d/implementation_interface/simulationtype/hd_interface_2d/hd_simulation.hh"

#include <experimental/filesystem>
#include <iostream>
#include <map>
#include <string>
#include <vector>
#include <memory>
#include <math.h>

#include <Eigen/Core>
#include <dune/istl/bvector.hh>
#include <dune/istl/operators.hh>
#include <dune/istl/solvers.hh>
#include <dune/istl/preconditioners.hh>
#include <dune/istl/io.hh>
#include <dune/common/parallel/mpihelper.hh>
#include <dune/grid/geometrygrid.hh>
#include <dune/common/exceptions.hh>
#include <dune/common/typetraits.hh>

#include <dune/common/fvector.hh>
#include <dune/common/timer.hh>
#include <dune/grid/io/file/vtk/vtksequencewriter.hh>
#include <dune/grid/io/file/gmshreader.hh>
#include <dune/pdelab/newton/newton.hh>
#include <dune/pdelab/common/function.hh>
#include <dune/pdelab/common/vtkexport.hh>
#include <dune/pdelab/finiteelementmap/pkfem.hh>
#include <dune/pdelab/finiteelementmap/qkfem.hh>
#include <dune/pdelab/constraints/common/constraints.hh>
#include <dune/pdelab/constraints/p0ghost.hh>
#include <dune/pdelab/constraints/common/constraintsparameters.hh>
#include <dune/pdelab/constraints/conforming.hh>
#include <dune/pdelab/gridfunctionspace/vectorgridfunctionspace.hh>
#include <dune/pdelab/gridfunctionspace/gridfunctionspaceutilities.hh>
#include <dune/pdelab/gridfunctionspace/localvector.hh>
#include <dune/pdelab/gridfunctionspace/genericdatahandle.hh>
#include <dune/pdelab/gridfunctionspace/interpolate.hh>
#include <dune/pdelab/gridfunctionspace/vtk.hh>
#include <dune/pdelab/gridfunctionspace/subspace.hh>

#include <dune/common/parametertreeparser.hh>

#include <dune/common/fvector.hh>
#include <dune/common/exceptions.hh>
#include <dune/geometry/quadraturerules.hh>
#include <dune/grid/common/mcmgmapper.hh>
#include <dune/grid/uggrid.hh>

#include "parameter/parameter_porous.hh"
// LOAD BC FILE HERE
//#include"/media/patrick/local1/simulation_for_papers/grl_harmonic/simulations/pressure_controlled_b1/bc_p_b1.hh"
#include"/media/patrick/local1/simulation_for_papers/grl_harmonic/simulations/pressure_controlled_b2/bc_p_b2.hh"

#define EIGEN_USE_MKL_ALL

#include<dune/pdelab/gridoperator/gridoperator.hh>
#include<dune/pdelab/gridoperator/onestep.hh>
#include<dune/pdelab/stationary/linearproblem.hh>
#include<dune/pdelab/instationary/onestep.hh>
#include<dune/pdelab/backend/eigen.hh>
#include<omp.h>

#include<tools/history_variables/history_variable_factory.hh>
#include<tools/history_variables/history_variable_functions.hh>


#include FN_ELEMENT
#include FN_ELEMENT_T

#include FN_SIMULATION

bool print = false;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template
// Name:         makeTruePredicate
// Description:  Function always returns true; needed for Grid-glue
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
void InputAssembler(std::string fn, Dune::ParameterTree &configuration)
{
    const std::string config_filename(fn);
    std::cout << "Reading Input file \"" << config_filename << "\""
              << std::endl;
    try
    {
        Dune::ParameterTreeParser::readINITree(config_filename, configuration);
    } catch (...)
    {
        std::cerr << "The configuration file \"" << fn << "\" "
                  "could not be read. Exiting..." << std::endl;
        exit(1);
    }
}

int main(int argc, char** argv, char** inputPath)
{
    // Define Dimension of lower dimensional Mesh: dim_low, higher dimensional mesh: dim_high and
    // world dimension: dim_world
    std::cout << argc << std::endl;
    const static int dim0 = 2;

    // try - catch in order to catch errors while initializing

    Dune::MPIHelper& helper = Dune::MPIHelper::instance(argc, argv);
    if (true)
        std::cout << "This is a sequential program." << std::endl;
    else
    {
        if (helper.rank() == 0)
            std::cout << "parallel run on " << helper.size()
                      << " process(es)" << std::endl;
    }

    // Eigen::initParallel();

    // sequential version

    //--------------------------------------- Setting up inpt ---------------------------------------
    // Initialize get input parameters from input file
    Dune::ParameterTree inputFile;
    std::string fn(argv[2]);
    InputAssembler(fn, inputFile);

    //-------------------------------- Initializing all Grid Objects --------------------------------
    // Sets up and reads higher dimensional grid in UGGrid Format
    std::string grid_file0 = inputFile.get<std::string>(
                                 "geom.msh_high");

    std::string input_folder = inputFile.get<std::string>(
                                   "info.input_folder");
    std::string output_folder = inputFile.get<std::string>(
                                    "out.outPath");
    std::string output_fn = inputFile.get<std::string>(
                                "out.outFn");
    std::stringstream ss;
    ss << output_folder << output_fn << "/";
    output_folder = ss.str();

    std::stringstream mss;
    mss << input_folder << "/mesh/";
    std::string mesh_folder_in = mss.str();

    std::stringstream moss;
    moss << output_folder << "/mesh/";
    std::string mesh_folder_out = moss.str();

    std::experimental::filesystem::remove_all(output_folder);
    std::experimental::filesystem::create_directory(output_folder);
    std::experimental::filesystem::copy(input_folder, output_folder);
    std::experimental::filesystem::copy(mesh_folder_in, mesh_folder_out);
    std::experimental::filesystem::copy(FN_ELEMENT, output_folder);
    std::experimental::filesystem::copy(FN_ELEMENT_T, output_folder);
    std::experimental::filesystem::copy(FN_SIMULATION, output_folder);

    typedef Dune::UGGrid<dim0> Grid0;
    Dune::GridFactory<Grid0> factory0;
    std::shared_ptr<std::vector<int> > element_index_to_physical_entity;
    std::vector<int> boundary_id_to_physical_entity;


    element_index_to_physical_entity.reset(new std::vector<int>);
    // make them local since we don't do anything with them anyway atm

    Dune::GmshReader<Grid0>::read(factory0, grid_file0, boundary_id_to_physical_entity,
                                  *element_index_to_physical_entity);

    Dune::shared_ptr<Grid0> grid0(factory0.createGrid());

    typedef Grid0::LocalIdSet::IdType Id;
    typedef std::map<Id, int> TagMap;
    TagMap elementTagMap;

    typedef Grid0::LevelGridView GV;
    const GV &gv = grid0->levelGridView(0);
    const Grid0::LocalIdSet &lis = grid0->localIdSet();
    const GV::Codim<0>::Iterator end = gv.end<0>();
    for (GV::Codim<0>::Iterator it = gv.begin<0>(); it != end; ++it)
        elementTagMap[lis.id(*it)] =
            (*element_index_to_physical_entity)[factory0.insertionIndex(*it)];

    element_index_to_physical_entity.reset();

    typedef Grid0::LevelGridView GV0;
    const GV0 &gv0 = grid0->levelGridView(0);

    HDSim2D(grid0, gv0, inputFile,  elementTagMap, boundary_id_to_physical_entity);
//-be (end sublime block generation)
}
