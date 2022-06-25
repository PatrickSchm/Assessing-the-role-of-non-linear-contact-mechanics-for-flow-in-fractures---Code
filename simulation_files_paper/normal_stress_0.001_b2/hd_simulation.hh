

//||===========================================================================================||
//||    Author:       Patrick Schmidt                                                          ||
//||    Date:         22.08.2016                                                               ||
//||    Name:         poroelastic_simulation.hh                                                ||
//||    Description:  Header File to provide template function in order to set up and run      ||
//||                  the simulation; All necessary objects like boundary conditions, initial  ||
//||                  solutions and so on are initiated in this file                           ||
//||===========================================================================================||

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// Type:         Template Function
// Name:         PoroElasticSim
// Description:  Initializes all necessary objects to set up and solve residually
//               coupled problems between meshes of different dimensions
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~




template<class Grid0, class GV0, class TagMap>
void HDSim2D(
    const Grid0& grid0, const GV0& gv0, Dune::ParameterTree & input, TagMap element_flags, std::vector<int> boundary_flags)
{
    // typedef double double; // define name double as double
    //----------------------------------- Initialization of timer ------------------------------------
    Dune::Timer timer;      // Initialization in order to stop time for whole init process
    omp_set_num_threads(8);
    Eigen::setNbThreads(8);
    //----------------------------- Dimension and shape function degree  -----------------------------
    const int dim0 = GV0::dimension;         // Get dimension

    const int p = 2;                        // Define order for displacement element
    double x, y;
    x = input.get<double>("geom.x"); // set up for rectangul<strong></strong>ar discretisations in order to apply boundary conditions: x-length
    y = input.get<double>("geom.y"); // set up for rectangular discretisations in order to apply boundary conditions: y-length

    //------------------------------ Choose domain and range field type ------------------------------
    typedef typename GV0::Grid::ctype Coord;    // Define name for porous coordinates

    //---------------------------------------- POROUS SET UP -----------------------------------------
    //------------------ Set up initial and boundary conditions for porous problem -------------------
    typedef DirichletPressure<GV0, double, 1> PressureDirichlet;              // Define name for pressure dirichlet boundary conditions template
    typedef DirichletDisplacement<GV0, double, dim0> DisplacementDirichlet;      // Define name for displacement boundary conditions template
    typedef ZeroVectorFunction<GV0, double, 1> InitialZeroPressure;               // Define name for initial pressure template

    DisplacementDirichlet init_displacement(gv0);       // initialize initial displacement object
    InitialZeroPressure init_pressure(gv0);                 // initialize initial pressure object
    PressureDirichlet boundary_pressure(gv0);           // initialize boundary pressure object
    DisplacementDirichlet boundary_displacement(gv0);

    typedef Dune::PDELab::CompositeGridFunction<DisplacementDirichlet,
            InitialZeroPressure> InitialSolution;                           // Define name for composite grid function (displacement and fluid pressure for biot)
    InitialSolution init_solution(init_displacement, init_pressure);    // Initialize initial solution object on composite grid function

    typedef BoundaryTypePorous2D BoundaryFunction;     // Defines name for Boundary condition template
    BoundaryFunction boundary_function(boundary_flags);         // initializing boundary function object

    typedef ZeroVectorFunction<GV0, double, dim0> SourceFunction; // Define name for zerovector template
    SourceFunction source_function(gv0);                       // Initializing source function object

    typedef Dune::PDELab::PorousDefaultParameters<GV0, double, SourceFunction,
            BoundaryFunction, InitialSolution, PressureDirichlet> LOPParameters; // Defines name of parameter template class for porous parameters

    // Needs to be set up before parameter object is initialized

    boundary_function.setGeometry(x, y); // gives geometry of rectanglular probe to boundary functions
    init_displacement.setGeometry(x, y); // gives geometry of rectanglular probe to initial displacement
    boundary_pressure.setGeometry(x, y); // gives geometry of rectanglular probe to boundary pressure

    LOPParameters parameters(input.sub("para_porous"), input.sub("solver"),
                             source_function, boundary_function, init_solution,
                             boundary_pressure);                                    // Initializes parameter object

    //----------------------- Make grid function space for porous bulk matrix -----------------------
    // Set ups constraints class and vector backend

    typedef Dune::PDELab::ConformingDirichletConstraints CONP;   // define name for dirichlet constraints
    CONP conP;
    // typedef Dune::PDELab::ISTL::VectorBackend <> VBE;         // defines name for vector backend
    typedef Dune::PDELab::Eigen::VectorBackend VBE;         // defines name for vector backend
    VBE vbe;

    // Sets up maps for finite elements - first for indicidual problems (displacement, pressure)
    typedef Dune::PDELab::QkLocalFiniteElementMap<GV0, Coord, double, 1> UFEM;        // Defines name for displacement FEM map
    UFEM ufem(gv0);                                                                 // init of displacement FEM map object
    typedef Dune::PDELab::QkLocalFiniteElementMap < GV0, Coord, double, p - 1 > PFEM; // Defines name for pressure FEM map
    PFEM pfem(gv0);                                                                 // init of pressure FEM map object

    // Create Gridfunction spaces: Displacement vector -> dim0; Pressure -> 1
    typedef Dune::PDELab::VectorGridFunctionSpace<GV0, UFEM, dim0, VBE, VBE, CONP> UGFS; // Define name for displacement vectorgridfunctionspace (3 primary variables)
    UGFS ugfs(gv0, ufem);                                                             // init vectorgridfunctionspace object for displacement
    ugfs.name("displacement");                                                          // give name to gridfunctionspace

    typedef Dune::PDELab::GridFunctionSpace<GV0, PFEM, CONP, VBE> PGFS; // Define name for pressure vectorgridfunctionspace (1 primary variables)
    // PGFS pgfs(gv0, pfem, conP);                                             // init pressure object
    PGFS pgfs(gv0, pfem);                                             // init pressure object
    pgfs.name("pressure");                                             // give name to gridfunction space

    // Compine both gridfunction spaces usning compositegridfunctionspace
    typedef Dune::PDELab::CompositeGridFunctionSpace<VBE,
            Dune::PDELab::LexicographicOrderingTag, UGFS, PGFS> GFS; // define name for compositegridfunctionspace
    GFS gfs(ugfs, pgfs);
    gfs.update();

    //--------------- Setting up all Dirichlet boundary conditions for porous problem ---------------
    typedef Dune::PDELab::PorousDisplacementDirichletConstraints<LOPParameters> ScalarDisplacementConstraints; // Defines name for porous displacement boundary conditions
    typedef Dune::PDELab::PowerConstraintsParameters <
    ScalarDisplacementConstraints, dim0 > DisplacementConstraints;                                              // Defines name for PowerConstraints (for 3 room directions) using scalar displacement boundary

    typedef Dune::PDELab::PorousPressureDirichletConstraints<LOPParameters> PressureConstraints;               // Defines name for porous pressure boundary conditions

    typedef Dune::PDELab::CompositeConstraintsParameters <
    DisplacementConstraints, PressureConstraints > Constraints;                                                // Defines name for composite constraints - pressure and displacement

    PressureConstraints pressure_constraints(parameters);                       // Init pressure constraints object
    ScalarDisplacementConstraints scalardisplacement_constraintsx(parameters,
            0);           // Init displacement constraint object for x-direction
    ScalarDisplacementConstraints scalardisplacement_constraintsy(parameters,
            1);
    // Init displacement constraint object for y-direction
    DisplacementConstraints displacement_constraints(
        scalardisplacement_constraintsx, scalardisplacement_constraintsy);      // Init displacement compositeconstraint object using x- and y-direction

    Constraints constraints(displacement_constraints, pressure_constraints);    // Init constraint object for all porous conditions


    typedef typename GFS::template ConstraintsContainer<double>::Type CC;         // Define name of Constraint Container
    CC cc;                                                                      // Init constraint container object
    Dune::PDELab::constraints(constraints, gfs, cc);                            // Set constraints to gfs using constraints, gfs and constraint container
    std::cout << "constrained dofs=" << cc.size() << " of " << gfs.globalSize()
              << std::endl;                                                     // Output for number of constraints

    //--------------------- Setting up all linear operators for porous problems ---------------------
    //----------------------- divided in time independent and dependent parts -----------------------
    // typedef HD_AX_NONLIN_GRAV<Constraints, LOPParameters> LOP;               // Defines name of LOP for porous medium - time independent
    typedef HD_AX_NONLIN<Constraints, LOPParameters> LOP;               // Defines name of LOP for porous medium - time independent
    LOP lop(constraints, parameters);                                               // Init of LOP for porous medium - time indeopendent
    typedef HDT_AX_NONLIN<Constraints, LOPParameters> TLOP;             // Defines name of LOP for porous medium - time dependent
    TLOP tlop(constraints, parameters);                                             // Init of LOP for porous medium - time independent
    // Init of LOP for coupling - time dependent
    typedef Dune::PDELab::Eigen::MatrixBackend<> MBE;    // Defines name of sparse block matrix backend
    // typedef Dune::PDELab::istl::BCRSMatrixBackend<> MBE;    // Defines name of sparse block matrix backend
    MBE mbe(1000);                                           // Inits backend for sparse block matrix (approximated number of zero entries)
//------------------------------------- GRID OPERATOR SET UP -------------------------------------
//---------------------------------------- POURS PROBLEM -----------------------------------------
// Defines name of Grid Operator for porous problem - time independent
    typedef Dune::PDELab::GridOperator<GFS, GFS, /* ansatz and test space */
            LOP,                                                 /* local operator */
            MBE,                                                  /* matrix backend */
            double, double, double,                                       /* field types for domain, range and jacobian */
            Grid0, TagMap,                                              /* constraints transformation  for ansatz and test space */
            std::vector<int>,                                              /* constraints transformation  for ansatz and test space */                                           /* constraints transformation  for ansatz and test space */
            CC, CC                                          /* constraints transformation  for ansatz and test space */
            > GO0;
    GO0 go0(gfs, cc, gfs, cc, lop, grid0, element_flags, boundary_flags, mbe);

// Defines name of Grid Operator for porous problem - time dependent
    typedef Dune::PDELab::GridOperator<GFS, GFS, /* ansatz and test space */
            TLOP,                                                 /* local operator */
            MBE,                                                  /* matrix backend */
            double, double, double,                                       /* field types for domain, range and jacobian */
            Grid0, TagMap,                                              /* constraints transformation  for ansatz and test space */
            std::vector<int>,                                              /* constraints transformation  for ansatz and test space */                                           /* constraints transformation  for ansatz and test space */
            CC, CC                                    /* constraints transformation  for ansatz and test space */
            > GO1;
    GO1 go1(gfs, cc, gfs, cc, tlop, grid0, element_flags, boundary_flags, mbe);

//-------------------------- Setting up one step method (theta-method) --------------------------
    const double theta = input.get<double>("solver.theta");             // Get theta value from input
    Dune::PDELab::OneStepThetaParameter<double> thetaMethod(theta);       // Init theta method for porous problem

    typedef Dune::PDELab::OneStepGridOperator<GO0, GO1> IGOS;          // Define name of one step grid operator for porous problem
    IGOS igo(go0, go1);                                                             // Init one step grid operator for porous problem

//------------------------------------ Linear solver backend ------------------------------------

    typedef Dune::PDELab::EigenBackend_BiCGSTAB_Base<class Eigen::IncompleteLUT< double, int >> LS;
    LS ls(1000);

//------------------------- Setting up solution vector and initial value -------------------------
    typedef typename IGOS::Traits::Domain U;    // Defines name of solution vector for porous problem
    U uold(gfs, 0.0);                           // defines solution vector for old time step of porous problem
    U unew(gfs, 0.0);                           // defines solution vector for new time step of porous problem
    U uiter(gfs, 0.0);                           // defines solution vector for new time step of porous problem

//------------------------------------------ VTK Output ------------------------------------------
    const std::string outPath = input.get < std::string > ("out.outPath");         // Gets outputpath from input for porous problem
    const std::string outFn = input.get < std::string > ("out.outFn");         // Gets outputpath from input for porous problem

    typedef typename Dune::PDELab::GridFunctionSubSpace<GFS,
            Dune::TypeTree::TreePath<0> > DisSubGFS;            // Defines name of gfs for displacement of porous problem
    typedef typename Dune::PDELab::GridFunctionSubSpace<GFS,
            Dune::TypeTree::TreePath<1> > PressureSubGFS;       // Defines name of gfs for pressure of porous problem

    DisSubGFS disSubGfs(gfs);                                   // Inits sub gfs for displacement of porous problem
    PressureSubGFS pressureSubGfs(gfs);                         // Inits sub gfs for pressure of porous problem

    Dune::SubsamplingVTKSequenceWriter < GV0 > vtkwriter(gv0, 0, outFn, outPath, "");        // Defines subsequence writer for porous problem (timesteps etc)

    typedef Dune::PDELab::VectorDiscreteGridFunction<DisSubGFS, U> UDGF;    // Defines name for discrete grid function for displacment of porous problem (needed for vtk output)
    typedef Dune::PDELab::DiscreteGridFunction<PressureSubGFS, U> PDGF;     // Defines name for discrete grid function for pressure of porous problem (needed for vtk output)
    UDGF vdgf(disSubGfs, unew);                                             // Init of discrete gfs for displacment of porous problem
    PDGF pdgf(pressureSubGfs, unew);                                        // Init of discrete gfs for pressure of porous problem

    vtkwriter.addVertexData(
        std::make_shared < Dune::PDELab::VTKGridFunctionAdapter<UDGF>
        > (vdgf, "displacement"));                                          // Add displacement vertex data of fluid fracture to vtkwriter
    vtkwriter.addVertexData(
        std::make_shared < Dune::PDELab::VTKGridFunctionAdapter<PDGF>
        > (pdgf, "pressure"));                                              // Add pressure vertex data of porous problem to vtkwriter
    // Add pressure vertex data of fluid fracture to vtkwriter
    vtkwriter.write(-0.1, Dune::VTK::ascii);                           // Write vertex data of porous problem to file


//----------------------------------------- PDE SOLVER ------------------------------------------
    typedef Dune::PDELab::StationaryLinearProblemSolver<IGOS, LS, U> PDESOLVER;          // Defines name of PDESolver for porous problem
    PDESOLVER pdesolver(igo, ls, 1e-16);                                                    // Init PDESolver object for porous problem

    typedef Dune::PDELab::Newton<IGOS, LS, U> PDESOLVERNEWTON;          // Defines name of PDESolver for porous problem
    PDESOLVERNEWTON pdesolverN(igo, ls);
    pdesolverN.setReassembleThreshold(0.0);
    pdesolverN.setVerbosityLevel(2);
    pdesolverN.setReduction(1e-9);
    pdesolverN.setMaxIterations(1500);
    pdesolverN.setAbsoluteLimit(1.e-8);
    pdesolverN.setLineSearchMaxIterations(500);
    // std::string strat = "hackbuschReuskenAcceptBest";
    // pdesolverN.setLineSearchStrategy(strat);
    // pdesolverN.setLineSearchDampingFactor(0.5);
    // pdesolverN.apply();
    // Dune::PDELab::Alexander2Parameter<double> method;
    Dune::PDELab::OneStepMethod<double, IGOS, PDESOLVERNEWTON, U, U> osm(thetaMethod,
            igo, pdesolverN);        // Init OneStepMethod for porous problem

// Time needed for Initialization process
    std::cout << "=== Initialize:" << timer.elapsed() << std::endl; // print time needed for whole init process
    timer.reset();                                                  // reset timer

//---------------------------------------- Time Step Loop ----------------------------------------
    const double Tend = input.get<double>("solver.t_end");      // get end time from input
    double time = 0;                                              // define time and init for 0
    int ntime = 0;


    init_history_variables(input, gfs, grid0, element_flags);


    while (time < Tend)
    {
        double dt = input.get<double>("solver.dt");
        if (time < TIME1) {
            dt = 2.5e0;
            pdesolverN.setReduction(6.0e-3);
            pdesolverN.setAbsoluteLimit(6.0e-3);
        } else if (time < TIME2) {
            dt = 5.e0;
            pdesolverN.setReduction(1.0e-3);
            pdesolverN.setAbsoluteLimit(1.0e-3);
        } else {
            dt = dt;
            pdesolverN.setReduction(1.0e-8);
            pdesolverN.setAbsoluteLimit(5.0e-7);
        }

        std::cout << "---------- Run Interface ----------" << std::endl;   // Printer to indecate porous simulation step

        cc.clear();
        Dune::PDELab::constraints(constraints, gfs, cc);
        osm.apply(time, dt, uold, init_solution, unew);  // solve porous problem time step
        uold = unew;

        InternalVariables::getInstance().write_output(ntime, time, outPath, outFn); // uold becomes equal to unew
        InternalVariables::getInstance().update();        

        // uold becomes equal to unew
        vtkwriter.write(time, Dune::VTK::ascii);      // write vtk output for porous probloem
        time += dt; // update time
        ntime++;
        if (time >= input.get<double>("solver.t_end"))
            break;
//-be (end sublime block generation)
    }
}
