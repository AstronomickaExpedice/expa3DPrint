include <lib/polyScrewThread_r1.scad>
$fn = 100;

in_d = 100;
wall = 6;

thread_height = 165;
thread_length = 20;
spider_height = 135;

module base(){
    difference(){
        union(){
            cylinder(d = in_d+2*wall, h=thread_height+3);
            translate([0, 0, thread_height+3])
                screw_thread(in_d + 2*wall,4,55,thread_length,PI/4,2);
                //cylinder(d = in_d + 2*wall, h = thread_length);
        }    
        translate([0, 0, 3])
            cylinder(d = in_d, h= 250);
        
        translate([0, 0, 3+30+spider_height])
            cube([2, 150, 60], center = true);
        translate([0, 0, 3+30+spider_height])
            cube([150, 2, 60], center = true);
        translate([50, 3, 3+spider_height+20])
            cube([150, 4, 80], center = true);
    }
}


module cap(){
    difference(){
        cylinder(d = in_d+3*wall, h = 30);
        translate([0, 0, 2]) screw_thread(in_d + 2*wall + 1.5 ,4,55,30,PI/4,2);
    }
}


base();
//translate([0, 0, 200]) cap();