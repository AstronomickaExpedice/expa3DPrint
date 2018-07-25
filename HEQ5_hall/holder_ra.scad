$fn=100;


difference(){
    union(){
        intersection(){
            union(){
                cylinder(d=88+4, h = 35);
                cylinder(d=88+4+20, h = 5);
            }
            translate([0,31.5-15,0]) cube([100, 25, 35]);
        }
        rotate(30) translate([44+1, -5, 0]) difference(){
            cube([3, 10, 40]);
            translate([1.5, 2.5, 0]) cube([1.5, 5, 40]);
        }
       }
    
    // tohle je prumer konce RA osy
    translate([36.88, -31.5, 0]) cylinder(d=3.2, h=10);
    translate([36.88, 31.5, 0]) cylinder(d=3.2, h=10);
    
    
    #translate([36.88, -31.5, 3]) cylinder(d=6.2, h=30);
    #translate([36.88, 31.5, 3]) cylinder(d=6.2, h=30);
    
    cylinder(d=88, h = 100);
}