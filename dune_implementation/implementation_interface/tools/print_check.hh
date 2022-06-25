#ifndef WRITECHECKH
#define WRITECHECKH

#include <iostream>
#include <fstream>
#include <stdio.h>

class WRITECHECK {
public:
    WRITECHECK(int size_i, int size_j)
    {
        std::vector<std::vector<double>> mat_dummy(size_i, std::vector<double>(size_j, 0.0));
        mat = mat_dummy;
        std::vector<double> r_dummy(0);
        r = r_dummy;
    }

    WRITECHECK(int size_i)
    {
        std::vector<std::vector<double>> mat_dummy(0, std::vector<double>(0));
        mat = mat_dummy;
        std::vector<double> r_dummy(size_i, 0.0);
        r = r_dummy;
    }

    void add_res(int i, double val) {
        r[i] += val;
    }

    void add_mat(int i, int j, double val) {
        mat[i][j] += val;
    }

    void write_mat_file(const char * fn, int iEl, int size_i, int size_j) {
        std::FILE * pFile;
        pFile = fopen (fn, "w");

        std::fprintf (pFile, "ElNumber: %10d ResSize: %3d %3d", iEl, size_i, size_j);


        for (std::vector<double> row : mat) {
            std::fprintf (pFile, "\n");
            for (double val : row)
                std::fprintf (pFile, "%5.16e ", val);
        }

        fclose (pFile);
    }

    void write_res_file(const char * fn, int iEl, int size_i) {
        std::FILE * pFile;
        pFile = fopen (fn, "w");

        std::fprintf (pFile, "ElNumber: %10d ResSize: %2d \n", iEl, size_i);


        for (double val : r)
            std::fprintf (pFile, "%5.16e \n", val);

        fclose (pFile);
    }

private:
    std::vector<double> r;
    std::vector<std::vector<double>> mat;
};

#endif
