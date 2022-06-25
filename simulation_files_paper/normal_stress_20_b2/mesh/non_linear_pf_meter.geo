length = 0.30;
height = 0.5;
gridsize = 400.e-5;
delta = 2.5e-5;

Point(1) = {0,		   				0,		0,		gridsize*10};
Point(2) = {length/2.0,	   	    	0,		0,		gridsize*10};
Point(3) = {length/2.0,	   			height,   	0,		gridsize};
Point(4) = {0.003,		   			height,   	0,		gridsize};
Point(5) = {0,		   				height,   	0,		gridsize};

Point(6) = {0.003,		   			height+delta,		0,		gridsize};
Point(7) = {0.003,		   			2*height+delta,		0,		gridsize*10};

Point(9)  = {length/2,		   				height+delta,		0,		gridsize};
Point(10) = {length/2,		   				2*height+delta,		0,		gridsize*10};

Line(100) = {1,2};
Line(101) = {2,3};
Line(102) = {3,4};
Line(103) = {4,5};
Line(104) = {5,1};

Line(106) = {6,7};

Line(109) = {6,9};
Line(110) = {9,10};
Line(111) = {10,7};


Line Loop(1001) = {100,101,102,103,104};
Line Loop(1002) = {109,110,111,-106};

Plane Surface(3) = {1001};
Plane Surface(4) = {1002};

Physical Line(1000) = {102,109};
Physical Surface(1) = {3,4};
