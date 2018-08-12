$fn = 100;
// Module names are of the form poly_<inkscape-path-id>().
// As a result you can associate a polygon in this OpenSCAD program with the
//  corresponding SVG element in the Inkscape document by looking for 
//  the XML element with the attribute id="inkscape-path-id".

// Paths have their own variables so they can be imported and used 
//  in polygon(points) structures in other programs.
// The NN_points is the list of all polygon XY vertices. 
// There may be an NN_paths variable as well. If it exists then it 
//  defines the nested paths. Both must be used in the 
//  polygon(points, paths) variant of the command.

profile_scale = 25.4/90; //made in inkscape in mm

// helper functions to determine the X,Y dimensions of the profiles
function min_x(shape_points) = min([ for (x = shape_points) min(x[0])]);
function max_x(shape_points) = max([ for (x = shape_points) max(x[0])]);
function min_y(shape_points) = min([ for (x = shape_points) min(x[1])]);
function max_y(shape_points) = max([ for (x = shape_points) max(x[1])]);

height = 50;
width = 1.0;


rect841_0_points = [[-2.250000,-4.000000],[1.977000,-4.000000],[2.210198,-2.166440],[2.250000,-0.046200],[2.196357,0.925498],[1.987047,1.933453],[1.208950,4.000000],[-2.250000,4.000000],[-2.250000,-4.000000]];

module poly_rect841(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(rect841_0_points);
  }
}

// The shapes
intersection(){
//rotate([0,-90,0]) poly_rect841(height, width);
rotate([0,-90,0]) union()  {
    linear_extrude(height=height)
      polygon(rect841_0_points);
  }

#translate([-10,0,-5]) rotate([0,0,0]) cylinder(h=30,d=8);
translate([-10,0,-2]) rotate([0,0,0]) cylinder(h=30,d1=7.5, d2=60);
}