$fn = 300;


difference(){
    union(){
        cylinder(d = 79.5+2, h = 15);
        cylinder(d = 79.5+20, h = 1);
    }    
    cylinder(d = 79.5, h = 15.2);
}