
difference(){
    union(){
        intersection(){
            translate([0, 78/2, 0]) cylinder(20-0.1, 78/2+2, 78/2+2, $fn=200);
            translate([-10, -15, 0]) cube([20, 30, 20]);
        }
        translate([-5, -2-3,0]) cube([10, 15, 10]);
    }
translate([0, 78/2, 0]) cylinder(20, 78/2, 78/2, $fn=200);
translate([0, 78/2, 0]) cylinder(6, 78/2+0.2, 78/2+0.2, $fn=200);
translate([0,1,5]) rotate([90,0,0]) cylinder(3+1.5, 6.5/2, 6.5/2, $fn=100);
}