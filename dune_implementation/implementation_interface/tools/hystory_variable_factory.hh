class InternalVariables
{
public:
    static InternalVariables& getInstance()
    {
        static InternalVariables instance; // Guaranteed to be destroyed.
        // Instantiated on first use.
        return instance;
    }
private:
    InternalVariables() {}                    // Constructor? (the {} brackets) are needed here.
    int _numEl = -1;
    int _numInt = -1;
    int _numHistVar = -1;

    std::vector<std::map<std::string, std::vector<double>>> IVOld;
    std::vector<std::map<std::string, std::vector<double>>> IVNew;

public:
    InternalVariables(InternalVariables const&) = delete;
    void operator=(InternalVariables const&)  = delete;

    void setHistoryVariables(int numEl, int numInt, int numHistVar, std::vector<std::string> nameIV ) {
        _numEl = numEl;
        _numInt = numInt;
        _numHistVar = _numHistVar;


        std::vector<double> dummyIntPoint(numInt, 0.0);
        for (int iEl = 0; iEl < _numEl; iEl++) {
            std::map<std::string, std::vector<double>> dummyMapIV;

            for (int iHistVar = 0; iHistVar < numHistVar; iHistVar++) {
                dummyMapIV.insert(std::pair<std::string, std::vector<double>>(nameIV[iHistVar], dummyIntPoint));
            }
            IVOld.push_back(dummyMapIV);
            IVNew.push_back(dummyMapIV);
        }
    }

    std::vector<double> getInternalVariables(int numEl, std::string varName) {
        return IVNew[numEl][varName];
    }
    std::vector<double> getInternalVariablesOld(int numEl, std::string varName) {
        return IVOld[numEl][varName];
    }
    double getInternalVariablesIpOld(int numEl, int iip, std::string varName) {
        return IVOld[numEl][varName][iip];
    }

    void setInternalVariables(int numEl, std::string varName, std::vector<double> internalVariableUpdated) {
        for (int iIntPpoint = 0; iIntPpoint < internalVariableUpdated.size(); iIntPpoint++) {
            IVNew[numEl][varName][iIntPpoint] = internalVariableUpdated[iIntPpoint];
        }
    }

    void setInternalVariablesIp(int numEl, int numIntp, std::string varName, double value) {
        IVNew[numEl][varName][numIntp] = value;
    }

    void updateVariableMax(std::string name, double val) {
        for (int iEl = 0; iEl < _numEl; iEl++) {
            for (int intp = 0; intp < _numInt; intp++) {
                if (IVOld[iEl][name][intp] < IVNew[iEl][name][intp] && IVNew[iEl][name][intp] < val)
                    IVOld[iEl][name][intp] = IVNew[iEl][name][intp];

            }
        }
    }
    void updateVariable(std::string name) {
        for (int iEl = 0; iEl < _numEl; iEl++) {
            IVOld[iEl][name] = IVNew[iEl][name];
        }
    }

    void updateAll() {
        IVOld = IVNew;
    }
};