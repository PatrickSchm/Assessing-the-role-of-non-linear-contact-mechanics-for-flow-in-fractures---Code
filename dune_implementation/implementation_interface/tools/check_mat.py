import os, os.path
import numpy as np
import sys

def printf(format, *args):
    sys.stdout.write(format % args)

def check(list, val):

    SUM = sum(list)
    SUM = sum(SUM)

    if SUM < val:
        return True, SUM 
    else:
        return False, SUM

class Element(object):

    iEl = -1
    mat = []
    def __init__(self):
        self.iEl =-1
        self.mat = []

path = "/home/paddy/Nextcloud/pkg/dune/results/non_linear_pf/analyse_mat_res/3d_test/mat/"
err_dif = 1.e-7

fnNames = sorted(os.listdir(path))
fileNumber = len(os.listdir(path))/2

biot = [Element() for i in range(fileNumber)]
HD = [Element() for i in range(fileNumber)]

iBiot = 0;
iHD = 0;

for fN in fnNames:
    if "biot" in fN:
        with open(path+fN) as f:
            lines = f.readlines()
        for i in range(0,len(lines)):
            words = lines[i].split()
            if i==0:
                biot[iBiot].iEl = int(words[1])
            else:
                biot[iBiot].mat.append([])
                for val in words:
                    biot[iBiot].mat[i-1].append(float(val))
        iBiot += 1
    if "hd" in fN:
        with open(path+fN) as f:
            lines = f.readlines()
        for i in range(0,len(lines)):
            words = lines[i].split()
            if i==0:
                HD[iHD].iEl = int(words[1])
            else:
                HD[iHD].mat.append([])
                for val in words:
                    HD[iHD].mat[i-1].append(float(val))
        iHD += 1

for imat in range(0,len(biot)):
    biot_matrix = np.array(biot[imat].mat)
    hd_matrix = np.array(HD[imat].mat)
    dif = biot_matrix - hd_matrix

    difTest, SUM =  check(dif,err_dif)

    if difTest:
        continue
    else:
        printf("\033[0;37;40m======================================================\n")
        printf("\033[0;37;40mDifferenze Found in Element:, %d, Dif: %3.7e \n", biot[imat].iEl, SUM)
        printf("\033[0;37;40m======================================================\n")

        printf("\033[0;37;40mBIOT TANGENT: \n")
        
        printf("\033[0;37;40m    ")

        for i in range(0, len(dif[0])):
            printf("\033[0;37;40m%-12d ", i)
        printf("\n")

        for i in range(0,len(dif)):
            for j in range(0, len(dif[i])):
                val = biot_matrix[i][j]
                if j== 0:
                    printf("\033[0;37;40m%3d ", i)
                if np.fabs(dif[i][j])<err_dif:
                    printf("\033[1;32;40m%12.5e ", val)
                else:
                    printf("\033[1;31;40m%12.5e ", val)
            printf('\n')

        printf("\033[0;37;40mHD TANGENT: \n")
        
        printf("\033[0;37;40m    ")

        for i in range(0, len(dif[0])):
            printf("\033[0;37;40m%-12d ", i)
        printf("\n")

        for i in range(0,len(dif)):
            for j in range(0, len(dif[i])):
                val = hd_matrix[i][j]
                if j== 0:
                    printf("\033[0;37;40m%3d ", i)
                if np.fabs(dif[i][j])<err_dif:
                    printf("\033[1;32;40m%12.5e ", val)
                else:
                    printf("\033[1;31;40m%12.5e ", val)
            printf('\n')
        
        printf("\033[0;37;40mDIF TANGENT: \n")
        
        printf("\033[0;37;40m    ")

        for i in range(0, len(dif[0])):
            printf("\033[0;37;40m%-12d ", i)
        printf("\n")

        for i in range(0,len(dif)):
            for j in range(0, len(dif[i])):
                val = dif[i][j]
                if j== 0:
                    printf("\033[0;37;40m%3d ", i)
                if np.fabs(dif[i][j])<err_dif:
                    printf("\033[1;32;40m%12.5e ", val)
                else:
                    printf("\033[1;31;40m%12.5e ", val)
            printf('\n')

                # else:

printf("\033[1;37;40mCHECK DONE\n",)

