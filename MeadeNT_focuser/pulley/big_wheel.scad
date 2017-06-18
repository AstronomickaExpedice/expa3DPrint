$fn = 100;
include <Pulley_T-MXL-XL-HTD-GT2_N-tooth.scad>

difference(){
    union(){
        remenice();
        hull(){
            cylinder(20, 15/2, 15/2);
            intersection(){
                cylinder(20, 23/2, 23/2);
                translate([0,-20,0]) cube([40, 40, 40]);
            }
        }
        
    }
    union(){
       cylinder(25, 9/2, 9/2);
       translate([0,0,-5]) cylinder(5, 4.1/2, 4.1/2);
       rotate([0,90,0]) translate([-15,0,0]) cylinder(20, 3.3/2, 3.3/2);
       translate([5,-3,10]) cube([3.5,6,11]);

    }   
}