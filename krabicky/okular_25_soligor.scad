 $fn=100;

include <../polyScrewThread_r1.scad>

PI = 3.141592;

module vicko(){
    difference(){
        union(){
            cylinder(d=43, h=15, $fn=200);
            cylinder(d=43+1.5, h=15, $fn=10);
        }
        translate([0,0,-0.1]) screw_thread(40+0.5,4,55,13,PI/2,0);
        translate([0, 0, 15-2]) difference(){
           cylinder(d=45, h=2);
           cylinder(d1=45, d2=43, h=2);
        }
        translate([0, 0, 0]) difference(){
           cylinder(d=45, h=1);
           cylinder(d2=45, d1=43, h=2);
        }
    }
    
}


module telo(){
   
    difference(){
        union(){
            screw_thread(40,4,55,10,PI/2,0);
            translate([0,0,10]) cylinder(h=70-10, d=43);
            translate([0,0,70]) cylinder(h=2, d1=43, d2=39);
        }
        cylinder(70, d=36);
    }
    
}


difference(){union(){
//rotate([180,0,0])vicko();
telo();
}
//cube(200);
}