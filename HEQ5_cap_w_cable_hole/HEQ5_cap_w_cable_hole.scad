  $fn = 100;
  
  difference(){
      union(){
          cylinder(2, 38/2, 38/2);
          cylinder(12, 31/2, 31/2);
          translate([0,0,7]) cylinder(5, 31.6/2, 31/2);
          translate([0,0,6]) cylinder(1, 31/2, 31.6/2);
      }
      translate([0,0,1.5]) cylinder(12, 29/2, 29/2);
      translate([8,0,0]) cylinder(12, 10/2, 10/2);
      hull(){
        translate([8,0,0]) cylinder(12, 5/2, 5/2);
        translate([100,0,0]) cylinder(12, 5/2, 5/2);
      }
      rotate([0,0,120]) translate([0,0,2]) #cube([100, 5/2, 20]);
      rotate([0,0,-120]) translate([0,0,2]) #cube([100, 5/2, 20]);
      
      
  }