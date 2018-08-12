$fn=200;

difference(){
    cylinder(d=2*25.4, h=29);
    cylinder(d=41.4+0.7, h=30.1); 
    translate([0,0,23]) cylinder(d=45, h=10);
}

translate([0,0,-1]) difference(){
    cylinder(d1=2*25.4-1, d2=2*25.4, h=1);
    cylinder(d=41.4+0.7, h=1); 
}
