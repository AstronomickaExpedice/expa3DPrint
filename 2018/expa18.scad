

difference(){
    hull(){
        cube([50, 1, 20]);
        translate([0,30,0]) cube([50, 0.1, 30]);
    }
    
    translate([25, 18, 25]) rotate([17, 0, 0]) linear_extrude(height=3){
        text("Expa 2018", halign="center", valign="center", size=7);
    }   
}


    translate([5,2.85,15]) rotate([90, 0, 0]) linear_extrude(height=3){
        text("By", halign="center", valign="center", size=5);
    }

    translate([30,2.7,15]) rotate([90, 0, 0]) linear_extrude(height=3){
        text("Radio", halign="center", valign="center", size=7);
    }

    translate([6,2.85,6.5]) rotate([90, 0, 0]) linear_extrude(height=3){
        text("for", halign="center", valign="center", size=5);
    }

    translate([30,2.7,5]) rotate([90, 0, 0]) linear_extrude(height=3){
        text("DigiFoto", halign="center", valign="center", size=7);
    }