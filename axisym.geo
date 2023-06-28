// Gmsh project created on Tue Jun 27 04:13:47 2023
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {0, .01, 0, 1.0};
//+
Point(3) = {0, -.01, 0, 1.0};
//+
Circle(1) = {2, 1, 3};
//+
Line(2) = {3, 2};
//+
Point(4) = {0, .1, 0, 1.0};
//+
Point(5) = {0, -.1, 0, 1.0};
//+
Point(6) = {.05, -.1, 0, 1.0};
//+
Point(7) = {.05, .1, 0, 1.0};
//+
Line(3) = {5, 6};
//+
Line(4) = {6, 7};
//+

//+
Line(5) = {7, 4};
//+
Line(6) = {4, 2};
//+
Line(7) = {5, 3};
//+
Curve Loop(1) = {3, 4, 5, 6, 1, -7};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {1, 2};
//+
Plane Surface(2) = {2};
//+
Physical Surface("shpere", 8) = {2};
//+
Physical Surface("air", 9) = {1};
//+
Physical Curve("bottom", 10) = {3};
//+
Physical Curve("top", 11) = {5};
//+
Physical Curve("right", 12) = {4};
//+
Physical Curve("symm", 13) = {6, 2, 7};
//+
Transfinite Curve {3, 5, 6} = 40 Using Progression 1;
//+
Transfinite Curve {6, 7} = 60 Using Progression 1;
//+
Transfinite Curve {4} = 140 Using Progression 1;
//+
Transfinite Curve {1, 2} = 20 Using Progression 1;
