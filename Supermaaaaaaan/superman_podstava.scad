
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

height = 1;
width = 1.0;


path36933_0_points = [[-0.012145,-17.209052],[-1.807987,-16.885351],[-3.146660,-15.984841],[-3.982998,-14.613411],[-4.271835,-12.876952],[-12.794827,-12.864052],[-19.968037,-5.621602],[-0.103605,17.209052],[19.968037,-5.828312],[12.311657,-12.864052],[4.247037,-12.864052],[4.247557,-12.876952],[3.963670,-14.642169],[3.135550,-16.010382],[1.798508,-16.894890],[-0.012145,-17.208992],[-0.012145,-17.209052],[-0.012145,-15.070162],[0.734455,-14.967005],[1.298244,-14.612407],[1.654873,-13.938384],[1.779995,-12.876952],[-1.804285,-12.876952],[-1.666947,-13.907399],[-1.290205,-14.584897],[-0.722468,-14.956725],[-0.012145,-15.070162],[-0.012145,-15.070162]];
path36933_0_paths = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16],
				[17,18,19,20,21,22,23,24,25,26,27]];

module poly_path36933(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path36933_0_points, path36933_0_paths);
  }
}

// The shapes
poly_path36933(height, width);
