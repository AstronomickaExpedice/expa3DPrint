outer_diameter = 50.8;
ccd_outer_diameter = 72;
bottom_height = 13;
wall_thickness = 2.5;
height = 5;
tube_hop_size = 0;
tube_hop_deepth = 0;
cover_thickness = 3;
filter_diameter = 28.4;
layer_height = 0.25;

screw_diameter = 3.8;
screw_head_diameter = 5.8;
screw_head_height = 2;
screw_distance = 62;
screw_count = 4;

difference() {
    union() {
        cylinder(d=ccd_outer_diameter, h=bottom_height, $fn=200);
        cylinder(d=outer_diameter, h=bottom_height+height, $fn=200);
    }
    cylinder(d=outer_diameter-wall_thickness*2, h=bottom_height+height-cover_thickness, $fn=200);

    translate([0, 0, bottom_height+height+layer_height-cover_thickness])
        #cylinder(d=filter_diameter, h=100, $fn=200);

    translate([0, 0, bottom_height+2])
        difference() {
            cylinder(d=outer_diameter+2, h=tube_hop_size, $fn=100);
            cylinder(d=outer_diameter-tube_hop_deepth*2, h=tube_hop_size, $fn=100);
            translate([0, 0, tube_hop_size-1])
                cylinder(d1=outer_diameter-tube_hop_deepth*2, d2=outer_diameter, h=1, $fn=100);
        }

    for(i = [1:screw_count]) {
        rotate([0, 0, i*(360/screw_count)]) {
            translate([screw_distance/2, 0, 0])
                cylinder(d=screw_diameter, h=100, $fn=20);

            translate([screw_distance/2, 0, bottom_height-screw_head_height])
                cylinder(d=screw_head_diameter, h=100, $fn=20);
        }
    }
}
