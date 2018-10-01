$fn=100;


a = 20;
r=3;
h=20;
w = 1.2; // wall
tw = 0.3*6;

difference(){
    hull(){
        translate([a, a, 0]) cylinder(r=r, h=20);
        translate([-a, a, 0]) cylinder(r=r, h=20);
        translate([a, -a, 0]) cylinder(r=r, h=20);
        translate([-a, -a, 0]) cylinder(r=r, h=20);
    }
    
    hull(){
        translate([a-w, a-w, 0]) cylinder(r=r, h=20-tw);
        translate([-a+w, a-w, 0]) cylinder(r=r, h=20-tw);
        translate([a-w, -a+w, 0]) cylinder(r=r, h=20-tw);
        translate([-a+w, -a+w, 0]) cylinder(r=r, h=20-tw);
    }
    
    
    translate([0, 0, h-tw+0.3]) cylinder(d=8, h=h+1);
    translate([a-w-3, 0, h-tw+0.3]) cylinder(d=5, h=h+1);
    scale([1,1.5,1]) translate([0,6,0]) rotate([0,90,0]) cylinder(d=3, h=100);
    
}

difference(){
    translate([a, 0, 0]) hull(){
        translate([-2.5,-5,0]) cube([5,10,3]);
        translate([-5, 0, 0]) cylinder(d=10, h=3);
    }
   #translate([a-w-3, 0, 0]) cylinder(h=3.1, d=3);
}


rotate([0, 0, -90]) translate([0,-13,h]) linear_extrude(height=0.6) text("Expa 2018", valign="center", halign="center", size=5);