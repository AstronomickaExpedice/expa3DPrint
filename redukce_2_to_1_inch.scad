$fn = 100;

inch = 25.4;
wall = 6;


M3_screw_diameter = 3.3;
M3_nut_height = 3;
M3_nut_diameter = 7;
difference(){
        union(){
            cylinder(d =  2*inch-0.5, h = 20+30);
            cylinder(d =  2*inch+2*wall, h = 20);
            
        }
        translate([0, 0, -1])
            cylinder(d = 1.75*inch+0.5, h = 100);
        translate([0, 0, 20/2])
            cylinder(d = 1.75*inch+2, h = 12, center = true);
        
        
       translate([0, 0, 20/2]){
            rotate([90, 0, 0])
                cylinder(d = M3_screw_diameter, h = 100);
            rotate([90, 0, 0])
                translate([0, 0, inch*1+2])
                    cylinder(d = M3_nut_diameter, h = M3_nut_height, $fn = 6, center = true);
            translate([0, -inch-2, 0])
                cube([M3_nut_diameter, M3_nut_height, 30], center = true);
       }
}