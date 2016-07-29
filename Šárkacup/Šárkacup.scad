difference() {
        cylinder (h = 20, r=10, center = false);
        translate([0,0,1]) cylinder (h = 21, r=9, center = false);
}

translate([1, 0, 1]) {
    translate([0, -2, 0]) cylinder(h = 1, r = 3, center=true);
    translate([0, 2, 0]) cylinder(h = 1, r = 3, center=true);
    translate([-1.8, 0, 0]) rotate([0, 0, 45]) cube([6, 6, 1], center=true);
}
