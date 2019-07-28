outer_diameter = 50.8;
ccd_outer_diameter = 80;

wall_thickness = 4;

screw_diameter = 3.3;
screw_head_diameter = 5.8;
screw_head_height = 2;
screw_distance = 62;
screw_count = 4;

difference() {
    union() {
        cylinder(d=ccd_outer_diameter, h=9, $fn=200);
        cylinder(d=outer_diameter, h=9+50, $fn=200);
    }
    cylinder(d=outer_diameter-wall_thickness*2, h=60, $fn=200);

    for(i = [1:screw_count]) {
        rotate([0, 0, i*(360/screw_count)]) {
            translate([screw_distance/2, 0, 0]) {
                cylinder(d=screw_diameter, h=10, $fn=20);

                translate([0, 0, 1.5])
                    cylinder(d1=screw_diameter, d2=screw_head_diameter, h=screw_head_height, $fn=20);

                translate([0, 0, 1.5+screw_head_height])
                    cylinder(d=screw_head_diameter, h=10, $fn=20);
            }
        }
    }
}