$fn= 100;


module pa(){
difference(){
    translate([-11, 0, 0]) cube([22, 49.8, 10]);
    
    // dira pro RJ45
    translate([(30-16)/2-15, 2, 1]) cube([16, 19, 10]);
    translate([(30-13)/2-15, -0.1, 1+1.5]) cube([13, 19, 10]);
    
    // dira pro sroub
    translate([0, 24, -0.1]) cylinder(d=3.4, h=15);
    translate([0, 24, -0.1]) cylinder(d=6.4, h=3, $fn=6);
    
    // dira pro prevodnik
    translate([(30-16)/2-15, 27, 1+3]) cube([16.5, 22, 10]);
    translate([(30-8)/2-15, 27, 1+3+2]) cube([8, 25, 3]);
}}


module pb(){
difference(){
    translate([-11, 0, 0]) cube([22, 49.8, 8]);
    
    // dira pro RJ45
    translate([(30-16)/2-15, 2, 5]) cube([16, 19, 3]);
    translate([(30-9)/2-15, -0.1, 5]) cube([9, 19, 3]);
    translate([(30-16)/2-15, 10, 2]) cube([16, 10, 6.1]);
    translate([(30-16)/2-15, 13, 4]) cube([16, 20, 6.1]);
    
    translate([6, 10, 9-6.5]) cylinder(d=4, h=6.5);
    translate([-6, 10, 9-6.5]) cylinder(d=4, h=6.5);
    
    // dira pro sroub
    translate([0, 24, -0.1]) cylinder(d=3.5, h=15);
    translate([0, 24, -0.1]) cylinder(d=6.4, h=3);
    
    // dira pro prevodnik
    translate([(30-16)/2-15, 27, 1+3]) cube([16.5, 22, 10]);
    //translate([(30-8)/2-15, 27, 1+3+2]) cube([8, 25, 3]);
}
    translate([(30-4)/2-15, 27+8, 1+3]) cube([4, 4, 3+8]);
    
}

translate([0,0,30]) rotate([0,180,0]) pb();
//pa();