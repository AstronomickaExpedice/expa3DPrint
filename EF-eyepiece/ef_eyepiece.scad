//Title: Canon EF mount socket module
//Version 0.1
//Author: Axel Tetzlaff
//Date: 23.10..2015
//License: GPL2

// Based on the `wedge` module and `EF Mount` module by Alex English

// Printed on my M3D Micro, it fits pretty tight to give some
// material for sanding it smooth.
// Just started out with OpenScad - this is my first usefult thing ;-)
$fa = 1.0;
$fs = 1.0;
$fn = 100;

clearance = 0.3; // increase up to max 1.0 if too tight

module wedge_180(h, r, d)
{
	rotate(d) difference()
	{
		rotate(180-d) difference()
		{
			cylinder(h = h, r = r);
			translate([-(r+1), 0, -1]) cube([r*2+2, r+1, h+2]);
		}
		translate([-(r+1), 0, -1]) cube([r*2+2, r+1, h+2]);
	}
}

module wedge(h, r, d){
	if(d <= 180)
		wedge_180(h, r, d);
	else
		rotate(d) difference()
		{
			cylinder(h = h, r = r);
			translate([0, 0, -1]) wedge_180(h+2, r+1, 360-d);
		}
}

module Ring(outer, inner, height) {
    difference() {
		cylinder(h = height, r = outer/2);
        cylinder(h = height, r = inner/2);
    }
}

module EFmountSocket() {

    union() {
        
        rotate([0, 0,  0]) translate([59/2-3, 0, 7]) cube([2,2,6]);
        rotate([0, 0,120]) translate([59/2-3, 0, 7]) cube([2,2,6]);
        rotate([0, 0,240]) translate([59/2-3, 0, 7]) cube([2,2,6]);
        translate([0, 0, 7])    
            difference() {
                Ring(59, 52, 1.5);
                union() {
                    wid = 80;
                        wedge(1.5, 59, wid);
                    rotate([0, 0, 240])
                        wedge(1.5, 59, wid);
                    rotate([0, 0, 120])
                        wedge(1.5, 59, wid);
                }
            }
        difference() {
            translate([0, 0, 5])
                cylinder(h = 6, r = 60/2);    
            union() {
                translate([0, 0, 7])
                    cylinder(h = 4, r = 55/2 + clearance);
                translate([0, 0, 5-0.1])
                    cylinder(h = 2+0.1, r = 55/2 + clearance);
            }
        }        
    }


}

module threads() {
	difference() {
		cylinder(h = 4, r = 54/2);
		cylinder(h = 4, r = 50.4/2);
		cylinder(h = 2.3, r = 54/2);
		for(i = [ [0, 0, 0], [180, 0, -70], [0, 0, -120], [180, 0, -180], [0, 0, -230], [180, 0, -300] ])
		{
			rotate(i)	
				translate([-35, 0, -5])
					cube(size=[40, 18, 10]);
		}
	}
	intersection() {
		difference() {
			cylinder(h = 4, r = 54/2);
			cylinder(h = 4, r = 50.4/2);
		}
		translate([-54/2-1, 0, 0])
			cube(size=[4, 1.9, 4], center = false);
	}
}


union() {
    translate([0, 0, 11]) Ring(60,48,1);  
    EFmountSocket();
    
    translate([0,0,11]) cylinder(h=0.2, d=60);
    translate([0,0,11]) difference(){
        union(){
            cylinder(h=40, d=25.4*1.25+8);
            cylinder(h=15, d1 = 60, d2=25.4*1.25+8);
            translate([-5, 25.4*1.25/2+1.5, 0]) cube([6+4,5,40]);
        }
        cylinder(h=41, d=25.4*1.25+1);
        translate([-3, 25.4*1.25/2+2, 11+16]) cube([6,3,30]);
        translate([0, 25.4*1.25/2+2+10, 11+20]) rotate([90,0,0]) cylinder(h=30, d=3.4);
    }
}
