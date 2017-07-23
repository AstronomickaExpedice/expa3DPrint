
include <polyScrewThread_r1.scad> 
PI=3.141592;


cylinder(2, 170/2, 170/2);

difference(){
screw_thread(180,4,55,15,PI/2,2);
cylinder(20, 165/2, 165/2);
}
