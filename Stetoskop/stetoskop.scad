$fn = 20;
difference(){
    cube([20, 40, 5], center = true);
    /// rohove diry
        translate([5.5, 15.5, 0]){
            cylinder(16, 2.6, 2.6, center = true);
        }
        translate([-5.5, 15.5, 0]){
            cylinder(16, 2.6, 2.6, center = true);
        }    
        translate([5.5, -15.5, 0]){
            cylinder(16, 2.6, 2.6, center = true);
        }   
        translate([-5.5, -15.5, 0]){
            cylinder(16, 2.6, 2.6, center = true);
        }
    
    ///     zapusteni pro srouby
    translate([0, 16, 2]){
        cube([21, 8.1, 3], center = true);
    }
    translate([0, -16, 2]){
        cube([21, 8.1, 3], center = true);
    }
     
    // trychtyr
    translate([0, 3.8, 0]){
        rotate([0, 0, 45]){
            cylinder(5.1, 5, 7, $fn=4, center = true);
        }
    }
    
    
    translate([3.8, 0, -2]){
        cube([7.4, 20, 2], center = true);
    }
    translate([-4,0,-2]){
        cube([7, 20, 2],center = true);
    }
    
    
}   