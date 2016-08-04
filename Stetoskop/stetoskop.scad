$fn = 20;
difference(){
    cube([20, 40, 5], center = true);
    
    /// rohove diry
        translate([5.08, 15.5, 0]){
            cylinder(16, 2.6, 2.6, center = true);
        }
        translate([-5.08, 15.5, 0]){
            cylinder(16, 2.6, 2.6, center = true);
        }    
        translate([5.08, -15.5, 0]){
            cylinder(16, 2.6, 2.6, center = true);
        }   
        translate([-5.08, -15.5, 0]){
            cylinder(16, 2.6, 2.6, center = true);
        }
    
    ///     zapusteni pro srouby
    translate([0, 16, 2]){
        cube([21, 8.1, 3], center = true);
    }
    translate([0, -16, 2]){
        cube([21, 8.1, 3], center = true);
    }
     
    /// trychtyr
    translate([0, 3.8, 2.5]){
        rotate([0, 0, 45]){
            cylinder(6, 4, 9, $fn=4, center = true);
        }
    }
    
    /// zlepseni tesneni v trychtyri
  translate([0, 4, -2]){
      cube([4, 5, 3.5],center = true);
    }
    
    /// vyber pro komponenty
    
    ///1
    translate([3, -4.5, -2]){
        cube([5, 11, 2], center = true);
    }
    
    ///2
    translate([4.5, 5, -2]){
        cube([4, 6, 2],center = true);
    }
    ///3
    translate([-5, 5, -2]){
        cube([4, 7, 2], center = true);
    }
}   
