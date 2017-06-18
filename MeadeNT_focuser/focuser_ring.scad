$fn=50;
clear = 0.08;

fokuser_d = 54;
objimka_sirka = 4;
objimka_sila = 4;


module objimka_fokuseru(){
    difference(){
        cylinder(objimka_sirka, fokuser_d/2+objimka_sila, fokuser_d/2+objimka_sila);
        translate([0,0,-clear]) cylinder(objimka_sirka+2*clear, fokuser_d/2, fokuser_d/2);
        translate([-1,0,-clear]) cube([2,fokuser_d/2+objimka_sila, objimka_sirka+2*clear]);
        
        for (i = [1:6]) {
            rotate(i*360/6+30) translate([0,fokuser_d/2-3+0.5, -clear]) cylinder(objimka_sirka+2*clear, 3, 3);
        }
    }
    
    difference(){   // tahle cast vytvari kostky pro sroubky
        union(){
            translate([1,fokuser_d/2, -clear]) cube([5,10,objimka_sirka]);
            translate([1,fokuser_d/2+4, -clear]) cube([5,8,8]);
            translate([-6,fokuser_d/2, -clear]) cube([5,10,objimka_sirka]);
            translate([-6,fokuser_d/2+4, -clear]) cube([5,8,8]);
        }
        translate([-10,fokuser_d/2+4+4, 4]) rotate([0,90,0]) cylinder(20, 3.3/2, 3.3/2);
        translate([-10+3.8,fokuser_d/2+4+4, 4]) rotate([0,90,0]) cylinder(3, 6.2/2, 6.2/2, $fn=6);
        translate([10.8-7,fokuser_d/2+4+4, 4]) rotate([0,90,0]) cylinder(3, 6.2/2, 6.2/2);
    }
    
    difference(){  // cast vytvarejici misto pro jeden endstop.
        union(){
            translate([-6,-fokuser_d/2-15, -clear]) cube([12,15,objimka_sirka]);
        }

    }
    
    
}

objimka_fokuseru();