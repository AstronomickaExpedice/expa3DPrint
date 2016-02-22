$fn=100;

difference(){
    union(){
        cylinder(20,50.8/2,50.8/2);
        translate([0,0,20]) cylinder(6,50.8/2,20/2);
        translate([0,0,20]) cylinder(2,52.8/2,52.8/2);
        translate([0,0,20]) cylinder(5,52.8/2,20/2);
        translate([0,0,25]) cylinder(70,25/2,25/2);
    }
    union(){
        cylinder(100,5/2,5/2);
        difference(){
            cylinder(45,22/2,22/2);
            translate([-10,-15,50]) rotate([0,45,0]) cube(30,30,30);
        }
        translate([-25,0,40]) rotate([0,-90,180]) difference(){
            cylinder(40,22/2,22/2);
            translate([-15,-25,40]) rotate([0,45,0]) cube(40,40,40);
        }
        cylinder(25,45/2,5/2);

        translate([0,0,52]) {
            cylinder(6,10/2,22/2);
        
        }
        translate([0,0,58]) {
            cylinder(40,22/2,22/2);
        
        }
        translate([0,0,60]) {
            rotate([360/3*1,90,0]) translate([]) cylinder(20,3/2,3/2);
            rotate([360/3*2,90,0]) translate([]) cylinder(20,3/2,3/2);
            rotate([360/3*3,90,0]) translate([]) cylinder(20,3/2,3/2);
        }
        translate([0,0,85]) {
            rotate([360/3*1,90,0]) translate([]) cylinder(20,3/2,3/2);
            rotate([360/3*2,90,0]) translate([]) cylinder(20,3/2,3/2);
            rotate([360/3*3,90,0]) translate([]) cylinder(20,3/2,3/2);
        }
    }
}