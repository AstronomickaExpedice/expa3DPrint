$fn = 100;

in_d = 100;
wall = 6;

thread_height = 173;
thread_length = 20;
spider_height = 135;

difference(){
    cylinder(d = in_d+2*wall, h=185);
    translate([0, 0, 3])
        cylinder(d = in_d, h= 185);
    
    translate([0, 0, 3+30+spider_height])
        cube([2, 150, 60], center = true);
    translate([0, 0, 3+30+spider_height])
        cube([150, 2, 60], center = true);
    translate([50, 3, 3+spider_height+20])
        cube([150, 4, 80], center = true);
    
}