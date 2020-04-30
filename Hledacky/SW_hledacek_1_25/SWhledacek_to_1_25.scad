$fn = 150;
inch = 25.4;

difference(){
    union(){
        cylinder(d = 52, h = 5);
        translate([0, 0, 5])
            cylinder(d = 52+3, h = 6);
    }
    translate([0, 0, -0.1]) cylinder(d = 1.25*inch+0.5, h = 20);
    
    translate([0, 0, 8])
        rotate([90, 0, 0])
            cylinder(d = 3.3, h = 100);
    hull(){
        translate([0, -18, 8])
            rotate([90, 0, 0])
                cylinder(d = 6.5, h = 3, $fn=6);

        translate([0, -18, 8+10])
            rotate([90, 0, 0])
                cylinder(d =6.5, h = 3, $fn=6);
    }

}