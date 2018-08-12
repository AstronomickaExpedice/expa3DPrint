$fn=100;
difference(){
    translate([-15, -15, 0]) hull(){
        cube([30,30,0.01]);
        translate([-(42-30)/2, -(42-30)/2,-7.5]) cube([42,42,0.01]);    
    }
    translate([0,0,-10]) cylinder(h=10, d=25);
    translate([-15,-15,0]) hull(){
        translate([4, 4, 0]) cube([30-8, 30-8, 0.01]);
        translate([-(42-30)/2+3, -(42-30)/2+3, -7.5]) cube([42-6, 42-6, 0.01]);    
    }
}

difference(){
        translate([-25,-25,0]) cube([50, 50, 7]);
        //translate([-25,-25,0]) cube([50, 50, 7]);
        hull(){
            translate([0,0,5]) cylinder(h=2, d=15);
            translate([5,0,5]) cylinder(h=2, d=15);
        }
        translate([0,0,-5.2]) #cylinder(h=10, d=6.5);
        translate([13,-23,0.5]) rotate([0,180,0]) linear_extrude(height=2) text("MiCHi", size=7);   
}