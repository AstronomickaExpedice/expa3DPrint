$fn=100;

difference(){
    hull(){
        cube([70, 1, 20]);
        translate([0,30,0]) cube([70, 0.1, 30]);
    }
    
    translate([37, 18, 25.5]) rotate([17, 0, 0]) linear_extrude(height=3){
        text("Expa 2018", halign="center", valign="center", size=7);
    }   
    #translate([35, 8.5, 22]) rotate([17, 0, 0]) linear_extrude(height=3){
        text("Alenka", halign="center", valign="center", size=7);
    }   
}


    translate([5,2.85,15]) rotate([90, 0, 0]) linear_extrude(height=3){
        text("By", halign="center", valign="center", size=5);
    }

    translate([24,2.7,15]) rotate([90, 0, 0]) linear_extrude(height=3){
        text("Radio", halign="center", valign="center", size=7);
    }

    translate([34,2.85,6.5]) rotate([90, 0, 0]) linear_extrude(height=3){
        text("for", halign="center", valign="center", size=5);
    }

    translate([52,2.7,6]) rotate([90, 0, 0]) linear_extrude(height=3){
        text("Moon", halign="center", valign="center", size=7);
    }