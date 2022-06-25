import sys
sys.path.insert(0, '/scratch/local/schmidt/pkg/gmsh_interface/build/')
import numpy as np
from tools import *
import libfractureGenerator as fg

path = "./"
fn = "non_linear_pf_meter.msh"

gmshInter = fg.gmshInterface()
gmshInter.createInterface2D(path+fn, 5.e-4)
