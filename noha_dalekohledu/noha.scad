nut_pocket = 8.4;
nut_height = 4.5;
nut_diameter = 9.4;

screw_diameter = 5.5;

inside_width = 26.3;
inside_height = 11.25;
inside_deepth = 45;
inside_hop = 1.5;
inside_hop_width = 19.75;
inside_top_hop = 3;
inside_top_hop_width = 12;

outside_width = 31.7;
outside_height = 14.47;
outside_deepth = 34; //od přechodu po střed díry
outside_hop = 3.3;
outside_hop_width = 22.5;

inside_outside_hop = 2.4;

hole_diameter = 9.2;

screw_distance = 22;
screw_outside_distance = 10;

support = true;
support_thickness = 0.4;

if(support) {
    translate([inside_width/-2, 0, 0])
    cube([inside_width, support_thickness, inside_outside_hop+inside_hop]);

    translate([inside_width/-2, 10, 0])
    cube([inside_width, support_thickness, inside_outside_hop+inside_hop]);

    translate([inside_width/-2, 20, 0])
    cube([inside_width, support_thickness, inside_outside_hop+inside_hop]);

    translate([inside_width/-2, 30, 0])
    cube([inside_width, support_thickness, inside_outside_hop+inside_hop]);

    translate([inside_width/-2, 40, 0])
    cube([inside_width, support_thickness, inside_outside_hop+inside_hop]);
}

difference() {
    union() {
        translate([inside_width/-2, 0, inside_outside_hop])
            cube([inside_width, inside_deepth, inside_height]);

        translate([outside_width/-2, inside_deepth, 0])
            cube([outside_width, outside_deepth, outside_height]);

        translate([0, inside_deepth+outside_deepth, 0])
            cylinder(d=outside_width, h=outside_height, $fn=50);

        translate([0, inside_deepth-screw_outside_distance-screw_distance, inside_outside_hop+inside_height])
            cylinder(d=inside_top_hop_width, h=inside_top_hop, $fn=20);

        translate([inside_top_hop_width/-2, inside_deepth-screw_distance-screw_outside_distance, inside_outside_hop+inside_height])
            cube([inside_top_hop_width, screw_distance+screw_outside_distance, inside_top_hop]);

        difference() {
            translate([0, inside_deepth, outside_height])
                cylinder(d=outside_hop_width, h=outside_hop, $fn=50);

            translate([-100, 0, 0])
                cube([200, inside_deepth, 100]);
        }
    }

    //díra pro hlavní šroub
    translate([0, inside_deepth+outside_deepth, -10])
        cylinder(d=hole_diameter, h=100, $fn=20);

    //vnitřní výkus
    translate([inside_hop_width/-2, 0, inside_outside_hop])
        cube([inside_hop_width, inside_deepth, inside_hop]);

    //díry pro šrouby
    translate([0, inside_deepth-screw_outside_distance, inside_outside_hop+inside_hop+0.25])
        cylinder(d=screw_diameter, h=100, $fn=20);
    translate([0, inside_deepth-screw_outside_distance-screw_distance, inside_outside_hop+inside_hop+0.25])
        cylinder(d=screw_diameter, h=100, $fn=20);

    //díry pro matky
    translate([0, inside_deepth-screw_outside_distance, inside_outside_hop+inside_hop+3])
        cylinder(d=nut_diameter, h=nut_height, $fn=6);
    translate([0, inside_deepth-screw_outside_distance-screw_distance, inside_outside_hop+inside_hop+3])
        cylinder(d=nut_diameter, h=nut_height, $fn=6);
    translate([0, inside_deepth-screw_outside_distance-nut_pocket/2, inside_outside_hop+inside_hop+3])
        cube([100, nut_pocket, nut_height]);
    translate([0, inside_deepth-screw_outside_distance-screw_distance-nut_pocket/2, inside_outside_hop+inside_hop+3])
        cube([100, nut_pocket, nut_height]);
}