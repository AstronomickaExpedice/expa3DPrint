$fn = 100;

cylinder(d = 120, h = 1);
difference(){
    cylinder(d = 101, h = 10);
    cylinder(d = 101-4, h = 11);
}