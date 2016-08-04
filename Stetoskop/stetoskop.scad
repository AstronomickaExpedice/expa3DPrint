$fn = 30;
difference(){
    cube([20, 40, 5], center = true);
    
    /// rohove diry
        translate([5.08, 15.5, 0]){
            cylinder(16, 2.9, 2.9, center = true);
        }
        translate([-5.08, 15.5, 0]){
            cylinder(16, 2.9, 2.9, center = true);
        }    
        translate([5.08, -15.5, 0]){
            cylinder(16, 2.9, 2.9, center = true);
        }   
        translate([-5.08, -15.5, 0]){
            cylinder(16, 2.9, 2.9, center = true);
        }
    
    ///     zapusteni pro srouby
    translate([0, 16, 2]){
        cube([21, 8.1, 3], center = true);
    }
    translate([0, -16, 2]){
        cube([21, 8.1, 3], center = true);
    }
     
    /// trychtyr
    translate([0, 5.2, 2.5]){
        rotate([0, 0, 45]){
            cylinder(6, 4, 9, $fn=4, center = true);
        }
    }
    
    /// zlepseni tesneni v trychtyri
  translate([0, 5.2, -2]){
      cube([4, 5.9, 3.5],center = true);
    }
    
    /// vyber pro komponenty
    
    ///1
    translate([-3, -5, -2]){
        cube([5, 13, 3], center = true);
    }
    
    ///2
    translate([-5, 5.25, -2]){
        cube([5, 6.5, 3],center = true);
    }
    ///3
    translate([5.5, 5.5, -2]){
        cube([5, 8, 3], center = true);
    }
}   
