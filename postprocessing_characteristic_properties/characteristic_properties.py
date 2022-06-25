import numpy as np
import matplotlib.pyplot as plt

def domain_stiff(properties):
    h = properties["domain"]["height"]["value"] * 1000.0                     # m -> mm
    E = properties["bulk"]["youngs"]["value"]   * 1000.0                     # GPa -> MPa

    Dstiff = E/h

    properties["bulk"]["domainStiff"] = {"value": Dstiff  , "unit" : "MPa/mm"}


def characteristic_diffusion_time(properties):
    delta       = properties["fracture"]["delta"]["value"] * 1.e-6           # mu m -> m
    domainRad   = properties["domain"]["domainRad"]["value"]
    br          = properties["domain"]["boreholeRad"]["value"]
    compress    = properties["fracture"]["compress"]["value"]/1.e9           # GPa -> Pa
    visc        = properties["fracture"]["visc"]["value"]

    fracLength   = domainRad-br
    perm         = delta*delta/12.0
    charDiffTime = (visc*fracLength**2*compress)/perm

    properties["fracture"]["charDiffTime"] = {"value": charDiffTime, "unit" : "s"}


def fracture_stiffness(properties):
    delta       = properties["fracture"]["delta"]["value"] * 1.e-3          # mu m -> mm
    delta_0     = properties["fracture"]["delta_0"]["value"] * 1.e-3        # mu m -> mm
    E           = properties["fracture"]["youngsFrac"]["value"]
    deltaMin    = properties["fracture"]["deltaMin"]["value"]* 1.e-3        # mu m -> mm

    ddelta      = delta - delta_0
    fracStiff   = (-E/(((delta_0+ddelta)-deltaMin) * ((delta_0+ddelta)-deltaMin))
                 * ddelta + E / ((delta_0+ddelta)-deltaMin))

    properties["fracture"]["fracStiff"] = {"value": fracStiff, "unit" : "MPa/mm"}

def fracture_sensitivity(properties):
    delta       = properties["fracture"]["delta"]["value"] * 1.e-6          # mu m -> m
    delta_0     = properties["fracture"]["delta_0"]["value"] * 1.e-6        # mu m -> m
    E           = properties["fracture"]["youngsFrac"]["value"]
    deltaMin    = properties["fracture"]["deltaMin"]["value"]

    ddelta          = delta - delta_0
    normalStress    = E/((delta_0+ddelta)-deltaMin)*ddelta
    relApertureSens = ((delta_0-deltaMin)/(E-normalStress)+normalStress*(delta_0-deltaMin)/(E-normalStress)**2)/delta

    properties["fracture"]["relApertureSens"] = {"value": relApertureSens, "unit" : "1/MPa"}

def aperture_conductivity(properties):
    visc         = properties["fracture"]["visc"]["value"] 
    conduct      = properties["fracture"]["conduct"]["value"]
    
    delta = np.power(12.0*visc*conduct/(997.0*9.81),1.0/2.0)               # hardcoded densitywater and gravity 
    delta = delta * 1.e6                                                   # m -> mu m 
    properties["fracture"]["delta"] = {"value": delta, "unit" : "mu m"}

def aperture_transmissivity(properties):
    visc         = properties["fracture"]["visc"]["value"] 
    transm       = properties["fracture"]["transm"]["value"]
    
    delta = np.power(12.0*visc*transm/(997.0*9.81),1.0/3.0)                # hardcoded densitywater and gravity 
    delta = delta * 1.e6                                                   # m -> mu m 
    properties["fracture"]["delta"] = {"value": delta, "unit" : "mu m"}

def conduct_aperture(properties):
    visc         = properties["fracture"]["visc"]["value"] 
    delta        = properties["fracture"]["delta"]["value"]/1.e6           # mu m -> m
    
    conduct = delta**2*(997.0*9.81)/(12.0*visc)                            # hardcoded density water and gravity 
    
    properties["fracture"]["conduct"] = {"value": conduct, "unit" : "m/s"}

def aperture_mean_pressure(properties):
    delta_0     = properties["fracture"]["delta_0"]["value"] 
    E           = properties["fracture"]["youngsFrac"]["value"]
    deltaMin    = properties["fracture"]["deltaMin"]["value"]
    mPressure   = properties["harmonic"]["pressureMean"]["value"]

    ddelta = (delta_0-deltaMin)/(-1.0+E/mPressure)
    delta  = delta_0 + ddelta

    properties["fracture"]["delta"] = {"value": delta, "unit" : "mu m"}

def dimensionless_domain(properties):
    domainRad   = properties["domain"]["domainRad"]["value"]
    br          = properties["domain"]["boreholeRad"]["value"]

    Lambda = domainRad/br

    properties["dimensionless"]["Lambda"] = {"value": Lambda, "unit" : "-"}

def dimensionless_diffusion(properties):
    charDiffusion = properties["fracture"]["charDiffTime"]["value"]
    period        = properties["harmonic"]["period"]["value"]

    Tau = charDiffusion/period

    properties["dimensionless"]["Tau"] = {"value": Tau, "unit" : "-"}

def dimensionless_stiff(properties):
    domainStiff = properties["bulk"]["domainStiff"]["value"]
    fracStiff   = properties["fracture"]["fracStiff"]["value"]

    Gamma = domainStiff/fracStiff

    properties["dimensionless"]["Gamma"] = {"value": Gamma, "unit" : "-"}

def dimensionless_aperture_change(properties):
    relApertureSens  = properties["fracture"]["relApertureSens"]["value"]
    pA    = properties["harmonic"]["pressureAmp"]["value"]

    Omega = relApertureSens*pA

    properties["dimensionless"]["Omega"] = {"value": Omega, "unit" : "-"}

def calculate_properties_num(properties):
    conduct_aperture(properties)
    domain_stiff(properties)
    characteristic_diffusion_time(properties)
    fracture_stiffness(properties)
    fracture_sensitivity(properties)
    dimensionless_domain(properties)
    dimensionless_diffusion(properties)
    dimensionless_domain(properties)
    dimensionless_domain(properties)
    dimensionless_stiff(properties)
    dimensionless_aperture_change(properties)

def calculate_properties_rz(properties):
    aperture_mean_pressure(properties)
    conduct_aperture(properties)
    domain_stiff(properties)
    characteristic_diffusion_time(properties)
    fracture_stiffness(properties)
    fracture_sensitivity(properties)
    dimensionless_domain(properties)
    dimensionless_diffusion(properties)
    dimensionless_domain(properties)
    dimensionless_domain(properties)
    dimensionless_stiff(properties)
    dimensionless_aperture_change(properties)

def calculate_properties_ter(properties):
    aperture_conductivity(properties)
    domain_stiff(properties)
    characteristic_diffusion_time(properties)
    dimensionless_domain(properties)
    dimensionless_diffusion(properties)
    dimensionless_domain(properties)
    dimensionless_domain(properties)
    dimensionless_stiff(properties)
    properties["fracture"]["relApertureSens"] = {"value": 1.0/(properties["fracture"]["fracStiff"]["value"]*properties["fracture"]["delta"]["value"]*1.e-3), "unit" : "1/MPa"}
    dimensionless_aperture_change(properties)

def calculate_properties_afr(properties):
    aperture_transmissivity(properties)
    conduct_aperture(properties)
    domain_stiff(properties)
    characteristic_diffusion_time(properties)
    dimensionless_domain(properties)
    dimensionless_diffusion(properties)
    dimensionless_domain(properties)
    dimensionless_domain(properties)
    dimensionless_stiff(properties)
    properties["fracture"]["aperture"] = {"value": 1.0/(properties["fracture"]["fracStiff"]["value"]*properties["fracture"]["delta"]["value"]*1.e-3), "unit" : "1/MPa"}
    properties["fracture"]["relApertureSens"] = {"value": 1.0/(properties["fracture"]["fracStiff"]["value"]*properties["fracture"]["delta"]["value"]*1.e-3), "unit" : "1/MPa"}
    dimensionless_aperture_change(properties)



def calculate_properties_bhr(properties):
    aperture_conductivity(properties)
    domain_stiff(properties)
    characteristic_diffusion_time(properties)
    dimensionless_domain(properties)
    dimensionless_diffusion(properties)
    dimensionless_domain(properties)
    dimensionless_domain(properties)
    dimensionless_stiff(properties)
    properties["fracture"]["delta"]["value"] = properties["fracture"]["delta"]["value"]
    properties["fracture"]["relApertureSens"] = {"value": np.array([0.27/0.17/(2.5/1000.0), 0.25/0.24/(2.5/1000.0)]), "unit" : "1/MPa"}
    dimensionless_aperture_change(properties)


def print_properties(properties):
    print_name_header(properties["name"])
    print_sub_header("Domain Properties")
    print_sub_properties(properties, "domain")
    print_sub_header("Harmonic Properties")
    print_sub_properties(properties, "harmonic")
    print_sub_header("Bulk Domain Properties")
    print_sub_properties(properties, "bulk")
    print_sub_header("Fracture Domain Properties")
    print_sub_properties(properties, "fracture")
    print_sub_header("Dimensionless Properties")
    print_sub_properties(properties, "dimensionless")

def print_name_header(name):
    print("============================================================================")
    print("%20s: %25s"%("Name", name))
    print("============================================================================")

def print_sub_header(name):
    print("----------------------------------------------------------------------------")
    print("%20s%20s"%("",name))
    print("%20s%40s%15s"%("Property","Value","Units"))
    print("----------------------------------------------------------------------------")

def print_sub_properties(props,name):
    for prop in props[name]:
        print("%20s%40s%15s"%(prop,props[name][prop]["value"],props[name][prop]["unit"]))

# numerical domain B1
B1 = {
    "name"    : "B1",
    # domain geometry
    "domain"  : {
        "domainRad"         : {"value":0.015, "unit": "m"},
        "height"            : {"value":0.075, "unit": "m"},
        "boreholeRad"       : {"value":0.003, "unit": "m"}
    },
    # harmonic properties
    "harmonic" :{
        "pressureAmp"       : {"value":4.0,   "unit": "MPa"},
        "period"            : {"value":10.0,  "unit": "s"}
    },
    # bulk domain
    "bulk"  :{
        "youngs"            : {"value":46.2,  "unit": "GPa"}
    },
    # fracture domain
    "fracture" : {
        "delta"             : {"value":np.array([52.0, 26.6]),  "unit": "mu m"},
        "delta_0"           : {"value":55.0,                    "unit": "mu m"},
        "youngsFrac"        : {"value":90.0,                    "unit": "MPa"},
        "deltaMin"          : {"value":0.0,                     "unit": "mu m"},
        "compress"          : {"value":0.417,                   "unit": "1/GPa"},
        "visc"              : {"value":0.001,                   "unit": "Pa s"}
    },
    # dimensionless properties:
    # Lambda    - Dimensionless Domain Length
    # Tau       - Dimensionless Diffusion Time
    # Gamma     - Dimensionless Bulk Stiffness
    # Omega     - Dimensionless Aperture change
    "dimensionless" : {
        "Lambda"            : {"value":'-',  "unit": "-"},
        "Tau"               : {"value":'-',  "unit": "-"},
        "Gamma"             : {"value":'-',  "unit": "-"},
        "Omega"             : {"value":'-',  "unit": "-"},
    }
}

# numerical domain B2
B2 = {
    "name"    : "B2",
    # domain geometry
    "domain"  : {
        "domainRad"         : {"value":0.15,  "unit": "m"},
        "height"            : {"value":1.0,   "unit": "m"},
        "boreholeRad"       : {"value":0.003, "unit": "m"}
    },
    # harmonic properties
    "harmonic" :{
        "pressureAmp"       : {"value":4.0,   "unit": "MPa"},
        "period"            : {"value":10.0,  "unit": "s"}
    },
    # bulk domain
    "bulk"  :{
        "youngs"            : {"value":46.2,  "unit": "GPa"}
    },
    # fracture domain
    "fracture" : {
        "delta"             : {"value":np.array([262.5, 17.4]), "unit": "mu m"},
        "delta_0"           : {"value":1200.0,                  "unit": "mu m"},
        "youngsFrac"        : {"value":1.4,                    "unit": "MPa"},
        "deltaMin"          : {"value":0.0,                     "unit": "mu m"},
        "compress"          : {"value":0.417,                   "unit": "1/GPa"},
        "visc"              : {"value":0.001,                   "unit": "Pa s"}
    },
    # dimensionless properties:
    # Lambda    - Dimensionless Domain Length
    # Tau       - Dimensionless Diffusion Time
    # Gamma     - Dimensionless Bulk Stiffness
    # Omega     - Dimensionless Aperture change
    "dimensionless" : {
        "Lambda"            : {"value":'-',  "unit": "-"},
        "Tau"               : {"value":'-',  "unit": "-"},
        "Gamma"             : {"value":'-',  "unit": "-"},
        "Omega"             : {"value":'-',  "unit": "-"},
    }
}

# numerical domain RZ
RZ = {
    "name"    : "RZ",
    # domain geometry
    "domain"  : {
        "domainRad"         : {"value":10.0,  "unit": "m"},
        "height"            : {"value":0.2,   "unit": "m"},
        "boreholeRad"       : {"value":0.1,   "unit": "m"}
    },
    # harmonic properties
    "harmonic" :{
        "pressureAmp"       : {"value":0.3,   "unit": "MPa"},
        "pressureMean"      : {"value":4.9,   "unit": "MPa"},
        "period"            : {"value":65.0,  "unit": "s"}
    },
    # bulk domain
    "bulk"  :{
        "youngs"            : {"value":42.0,  "unit": "GPa"}
    },
    # fracture domain
    "fracture" : {
        "delta"             : {"value":'will be calculated for mean pressure',    "unit": "mu m"},
        "delta_0"           : {"value":np.array([40.0, 30.0]),  "unit": "mu m"},
        "youngsFrac"        : {"value":np.array([6.0,   6.5]),  "unit": "MPa"},
        "deltaMin"          : {"value":0.0,                     "unit": "mu m"},
        "compress"          : {"value":0.417,                   "unit": "1/GPa"},
        "visc"              : {"value":0.001,                   "unit": "Pa s"}
    },
    # dimensionless properties:
    # Lambda    - Dimensionless Domain Length
    # Tau       - Dimensionless Diffusion Time
    # Gamma     - Dimensionless Bulk Stiffness
    # Omega     - Dimensionless Aperture change
    "dimensionless" : {
        "Lambda"            : {"value":'-',  "unit": "-"},
        "Tau"               : {"value":'-',  "unit": "-"},
        "Gamma"             : {"value":'-',  "unit": "-"},
        "Omega"             : {"value":'-',  "unit": "-"},
    }
}

# numerical domain RZ
TER = {
    "name"    : "TER",
    # domain geometry
    "domain"  : {
        "domainRad"         : {"value":50.0,  "unit": "m"},
        "height"            : {"value":10.0,   "unit": "m"},
        "boreholeRad"       : {"value":0.05,   "unit": "m"}
    },
    # harmonic properties
    "harmonic" :{
        "pressureAmp"       : {"value":17.0*1.e-3,   "unit": "MPa"},
        "period"            : {"value":300.0,  "unit": "s"}
    },
    # bulk domain
    "bulk"  :{
        "youngs"            : {"value":40.0,  "unit": "GPa"}
    },
    # fracture domain
    "fracture" : {
        "delta"             : {"value":'will be calculated based on conductivity',    "unit": "mu m"},
        "conduct"           : {"value":np.array([0.01,0.1]),                     "unit": "mu m"},
        "deltaMin"          : {"value":0.0,                     "unit": "mu m"},
        "compress"          : {"value":0.417,                   "unit": "1/GPa"},
        "visc"              : {"value":0.001,                   "unit": "Pa s"},
        "fracStiff"         : {"value": np.array([40000.0/10000.0]), "unit": "MPa/mm"},

    },
    # dimensionless properties:
    # Lambda    - Dimensionless Domain Length
    # Tau       - Dimensionless Diffusion Time
    # Gamma     - Dimensionless Bulk Stiffness
    # Omega     - Dimensionless Aperture change
    "dimensionless" : {
        "Lambda"            : {"value":'-',  "unit": "-"},
        "Tau"               : {"value":'-',  "unit": "-"},
        "Gamma"             : {"value":'-',  "unit": "-"},
        "Omega"             : {"value":'-',  "unit": "-"},
    }
}

# numerical domain RZ
AFR = {
    "name"    : "AFR",
    # domain geometry
    "domain"  : {
        "domainRad"         : {"value":10.0,  "unit": "m"},
        "height"            : {"value":7.6,   "unit": "m"},
        "boreholeRad"       : {"value":0.05,  "unit": "m"}
    },
    # harmonic properties
    "harmonic" :{
        "pressureAmp"       : {"value":1.5*1.e-3,   "unit": "MPa"},
        "period"            : {"value":np.array([61.0,243.0]),       "unit": "s"}
    },
    # bulk domain
    "bulk"  :{
        "youngs"            : {"value":10.0,  "unit": "GPa"}
    },
    # fracture domain
    "fracture" : {
        "delta"             : {"value":'will be calculated based on transmissivity',  "unit": "mu m"},
        "conduct"           : {"value":'will be calculated based on conductivity',    "unit": "m/s"},
        "transm"            : {"value":np.array([3.0*1.e-4,7.0*1.e-4]),               "unit": "m^2/s"},
        "deltaMin"          : {"value":0.0,                                           "unit": "mu m"},
        "compress"          : {"value":0.417,                                         "unit": "1/GPa"},
        "visc"              : {"value":0.001,                                         "unit": "Pa s"},
        "fracStiff"         : {"value": np.array([0.02,0.1]),                         "unit": "MPa/mm"},
},
    # dimensionless properties:
    # Lambda    - Dimensionless Domain Length
    # Tau       - Dimensionless Diffusion Time
    # Gamma     - Dimensionless Bulk Stiffness
    # Omega     - Dimensionless Aperture change
    "dimensionless" : {
        "Lambda"            : {"value":'-',  "unit": "-"},
        "Tau"               : {"value":'-',  "unit": "-"},
        "Gamma"             : {"value":'-',  "unit": "-"},
        "Omega"             : {"value":'-',  "unit": "-"},
    }
}

# numerical domain RZ
BHR = {
    "name"    : "BHR",
    # domain geometry
    "domain"  : {
        "domainRad"         : {"value":50.0,  "unit": "m"},
        "height"            : {"value":10,   "unit": "m"},
        "boreholeRad"       : {"value":0.05,  "unit": "m"}
    },
    # harmonic properties
    "harmonic" :{
        "pressureAmp"       : {"value":0.3*1.e-3,   "unit": "MPa"},
        "period"            : {"value":24.0,       "unit": "s"}
    },
    # bulk domain
    "bulk"  :{
        "youngs"            : {"value":0.1,  "unit": "GPa"}
    },
    # fracture domain
    "fracture" : {
        "delta"             : {"value": 'will be calculated based on conductivity',  "unit": "mu m"},
        "conduct"           : {"value": np.array([2.0*1.e-4,7.0*1.e-4]),     "unit": "m/s"},
        "deltaMin"          : {"value": 0.0,                                 "unit": "mu m"},
        "compress"          : {"value": 0.417,                               "unit": "1/GPa"},
        "visc"              : {"value": 0.001,                               "unit": "Pa s"},
        "fracStiff"         : {"value": np.array([0.02]),                    "unit": "MPa/mm"},
    },
    # dimensionless properties:
    # Lambda    - Dimensionless Domain Length
    # Tau       - Dimensionless Diffusion Time
    # Gamma     - Dimensionless Bulk Stiffness
    # Omega     - Dimensionless Aperture change
    "dimensionless" : {
        "Lambda"            : {"value":'-',  "unit": "-"},
        "Tau"               : {"value":'-',  "unit": "-"},
        "Gamma"             : {"value":'-',  "unit": "-"},
        "Omega"             : {"value":'-',  "unit": "-"},
    }
}

calculate_properties_num(B1)
calculate_properties_num(B2)
calculate_properties_rz(RZ)
calculate_properties_ter(TER)
calculate_properties_afr(AFR)
calculate_properties_bhr(BHR)

print_properties(RZ)

plt.semilogx(min(B1["dimensionless"]["Tau"]["value"]),min(B1["dimensionless"]["Omega"]["value"]), 'x',color="blue")
plt.semilogx(max(B1["dimensionless"]["Tau"]["value"]),max(B1["dimensionless"]["Omega"]["value"]), 'x',color="blue")

plt.semilogx(min(B2["dimensionless"]["Tau"]["value"]),min(B2["dimensionless"]["Omega"]["value"]), 'x',color="red")
plt.semilogx(max(B2["dimensionless"]["Tau"]["value"]),max(B2["dimensionless"]["Omega"]["value"]), 'x',color="red")

plt.semilogx(min(TER["dimensionless"]["Tau"]["value"]),min(TER["dimensionless"]["Omega"]["value"]), 'x',color="green")
plt.semilogx(0.0006,max(TER["dimensionless"]["Omega"]["value"]), 'x',color="green")

plt.semilogx(min(AFR["dimensionless"]["Tau"]["value"]),min(AFR["dimensionless"]["Omega"]["value"]), 'x',color="orange")
plt.semilogx(max(AFR["dimensionless"]["Tau"]["value"]),max(AFR["dimensionless"]["Omega"]["value"]), 'x',color="orange")

plt.semilogx(min(RZ["dimensionless"]["Tau"]["value"]),min(RZ["dimensionless"]["Omega"]["value"]), 'x',color="black")
plt.semilogx(max(RZ["dimensionless"]["Tau"]["value"]),max(RZ["dimensionless"]["Omega"]["value"]), 'x',color="black")

plt.semilogx(min(BHR["dimensionless"]["Tau"]["value"]),min(BHR["dimensionless"]["Omega"]["value"]), 'x',color="grey")
plt.semilogx(max(BHR["dimensionless"]["Tau"]["value"]),max(BHR["dimensionless"]["Omega"]["value"]), 'x',color="grey")

plt.tight_layout()
#plt.xlim(1.e-8,6.e-4)
plt.ylim(0.0,0.75)
plt.grid()

# BHR back-calculate porosity estimation by try and error
por_1 = 0.31
por_2 = 0.42
permeability_1 = 1.0**2*(por_1**3.0*0.05)/(150.0*(1.0-por_1)**2.0)
permeability_2 = 1.0**2*(por_2**3.0*0.05)/(150.0*(1.0-por_2)**2.0)

permeability_1_exp = BHR["fracture"]["conduct"]["value"]/(9.81*1000.*0.001)
print(permeability_1_exp)
print(permeability_1,permeability_2)
print(0.41 / 0.31,0.43/0.42)

plt.savefig('./pdfs/comparison_experiments_hm_inter.pdf', dpi=300)