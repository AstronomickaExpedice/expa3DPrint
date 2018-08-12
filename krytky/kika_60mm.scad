$fn=150;

difference(){
    cylinder(h=7, d=60+3);
    cylinder(h=7.1, d=60+0.41);
    translate([0,0,7-1]) cylinder(h=1, d1=60+0.41, d2=62);
}


difference(){
  translate([0,0,-1.5]) cylinder(h=1.5, d1=60+3-2, d2=60+3); 
  translate([0,0,-0.3]) linear_extrude(height = 2) {
        text("EXPA 2018", size=7, halign="center", valign="center");
  }
}