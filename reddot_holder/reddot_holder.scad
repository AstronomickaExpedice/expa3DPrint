hull(){
    cube([30, 0.1, 40]);
    translate([(30-23)/2, 10, 0]) cube([23, 0.1, 40]);
}
translate([30/2-10/2, 0, 0]) cube([10, 30, 40]);

translate([0, 30, 0]){
    translate([30/2-20/2, 0, 0]) cube([20, 2, 40]);
    translate([30/2-5, 2, 0]) hull(){
        cube([10, 0.1, 40]);
        translate([-2, 3, 0]) cube([14,0.1, 40]);
    }
}


translate([30/2-7, -5, 0]) cube([14, 5, 4]);