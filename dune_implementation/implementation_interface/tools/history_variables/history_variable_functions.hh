template <typename GFS, typename GRID, typename EID>
void init_history_variables(Dune::ParameterTree const &input, const GFS &gfs, const GRID &grid, EID &element_flags)
{
    if (input.get<bool>("intVar.required"))
    {
        std::vector<std::string> intVarNames;
        for (int iIntVar = 0; iIntVar < input.get<std::vector<std::string>>("intVar.name").size(); iIntVar++)
        {
            intVarNames.push_back(input.get<std::vector<std::string>>("intVar.name")[iIntVar]);
        }
        const std::string outPath = input.get<std::string>("out.outPath"); // Gets outputpath from input for porous problem
        const std::string outFn = input.get<std::string>("out.outFn");     // Gets outputpath from input for porous problem

        InternalVariables::getInstance().setHistoryVariables(gfs, grid, element_flags, intVarNames, outPath, outFn);
    }
}
