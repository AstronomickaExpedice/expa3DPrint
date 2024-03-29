$fn=100;
montaz_d = 77;

module objimka(){
    
    difference(){
        union(){
            intersection(){
                translate([0,5,0]) cylinder(h=20, d = montaz_d);
                translate([-25, 0, 0]) cube([50, 100, 20]);
           }
           translate([-28/2, 0]) cube([28, montaz_d/2+5+3, 12]);
        }
        
        cylinder(h=21, d = montaz_d);
        
        translate([0,0,12]) difference(){
            cylinder(h=5, d = montaz_d+10);
            cylinder(h=5, d = montaz_d+7);
        }
        
        translate([20/2, montaz_d/2-3, 5]){
            rotate([-90, 00, 0]) cylinder(h=3+3, d=6.5);
            rotate([-90, 00, 0]) cylinder(h=20, d=3.5);
            rotate([-90, 90, 0]) translate([0, 0, 8]) cylinder(h=4, d=6.3, $fn=6);
        }
        translate([-20/2, montaz_d/2-3, 5]){
            rotate([-90, 00, 0]) cylinder(h=3+3, d=6.5);
            rotate([-90, 00, 0]) cylinder(h=20, d=3.5);
            rotate([-90, 90, 0]) translate([0, 0, 8]) cylinder(h=4, d=6.3, $fn=6);
        }
    }
    
    
    
}



objimka();