
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


path4528_0_points = [[-9.916402,-11.930500],[-15.475791,-6.184080],[-0.080348,11.930500],[15.475791,-6.348160],[9.541882,-11.930500],[-9.916402,-11.930500],[-8.419642,-9.401090],[-5.739662,-9.401090],[-7.179932,-0.743090],[-11.721072,-6.021800],[-8.419642,-9.401090],[-4.754060,-9.401090],[4.743251,-9.401090],[-0.021604,-0.922930],[-4.754060,-9.401090],[5.728861,-9.401090],[8.392411,-9.401090],[11.938491,-6.084150],[7.159902,-0.590260],[5.728861,-9.401090],[-4.803576,-6.797190],[-0.021604,1.888050],[4.835311,-6.653140],[5.990631,0.754120],[5.976631,0.770120],[4.013291,0.698820],[3.490212,-2.724820],[2.519012,-0.922860],[2.967132,1.852110],[5.021852,1.868310],[0.017064,7.622390],[-4.925382,1.877540],[-2.898347,1.924140],[-2.524725,-1.103140],[-3.496150,-2.760830],[-4.056364,0.698820],[-5.939352,0.698820],[-5.958451,0.676720],[-4.803576,-6.797190]];
path4528_0_paths = [[0,1,2,3,4,5],
				[6,7,8,9,10],
				[11,12,13,14],
				[15,16,17,18,19],
				[20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38]];

module poly_path4528(h, w, res=4)  {
  scale([profile_scale, -profile_scale, 1])
  union()  {
    linear_extrude(height=h)
      polygon(path4528_0_points, path4528_0_paths);
  }
}

// The shapes
poly_path4528(height, width);
