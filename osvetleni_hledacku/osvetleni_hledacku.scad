$fn = 100;


d = 36; // vnitrni
wall = 2;
h = 15;

dl = 5.4; // d LEDky

difference(){
    union(){
        cylinder(d=d+2*wall, h=h);
        translate([0,0, h/2]) rotate([90,0,0]) cylinder(d=dl+2, h=d/2+wall+0.5);
    }
    cylinder(d=d, h=h);
    translate([0,0, h/2]) rotate([90,0,0]) cylinder(d=dl, h=100);
    rotate([0,0,45]) cube(50);
}