$fn = 100;

zakl_kostka_d = 34.5;
zakl_kostka_s = 21.5;

mot_posun_x = 5;
mot_posun_z = 5;
mot_sila_steny = 4;

nema_17_srouby = 31.0;
nema_17_obrys = 42.3;
nema_17_priruba = 17;

module nema_17_holes(h=10, d=5){
    translate([0,0,-h/2]){
        hull(){
            translate([-d/2, 0, 0]) cylinder(h, nema_17_priruba/2,nema_17_priruba/2 );
            translate([+d/2, 0, 0]) cylinder(h, nema_17_priruba/2,nema_17_priruba/2 );
        }
        hull(){
            translate([nema_17_srouby/2-d/2, nema_17_srouby/2, 0]) cylinder(h, 3.35/2, 3.35/2);
            translate([nema_17_srouby/2+d/2, nema_17_srouby/2, 0]) cylinder(h, 3.35/2, 3.35/2);
        }
        hull(){
            translate([nema_17_srouby/2-d/2, -nema_17_srouby/2, 0]) cylinder(h, 3.35/2, 3.35/2);
            translate([nema_17_srouby/2+d/2, -nema_17_srouby/2, 0]) cylinder(h, 3.35/2, 3.35/2);
        }
        hull(){
            translate([-nema_17_srouby/2-d/2, nema_17_srouby/2, 0]) cylinder(h, 3.35/2, 3.35/2);
            translate([-nema_17_srouby/2+d/2, nema_17_srouby/2, 0]) cylinder(h, 3.35/2, 3.35/2);
        }
        hull(){
            translate([-nema_17_srouby/2-d/2, -nema_17_srouby/2, 0]) cylinder(h, 3.35/2, 3.35/2);
            translate([-nema_17_srouby/2+d/2, -nema_17_srouby/2, 0]) cylinder(h, 3.35/2, 3.35/2);
            }
        }
    
}

module drzak_motoru(){
    difference(){
        union(){
            cube([zakl_kostka_d, zakl_kostka_s, 6]);
            cube([zakl_kostka_d+mot_posun_x+mot_sila_steny, zakl_kostka_s, 6]);
            translate([zakl_kostka_d/2-5,-15,0]) cube([10, 15, 3]); // drzak pro koncak
            hull(){
                translate([zakl_kostka_d+mot_posun_x,-5,0]) cube([mot_sila_steny,zakl_kostka_s+10,2]);
                translate([zakl_kostka_d+mot_posun_x,-nema_17_obrys/2+zakl_kostka_s/2,6+mot_posun_z]) cube([mot_sila_steny, nema_17_obrys,nema_17_obrys+5/2]);
            }
            

        }
        translate([zakl_kostka_d/2, zakl_kostka_s/2,0])union(){
            translate([+21/2,+14/2,-0.1]) cylinder(5, 3.35/2, 3.35/2);
            translate([+21/2,-14/2,-0.1]) cylinder(5, 3.35/2, 3.35/2);
            translate([-21/2,+14/2,-0.1]) cylinder(5, 3.35/2, 3.35/2);
            translate([-21/2,-14/2,-0.1]) cylinder(5, 3.35/2, 3.35/2);
            translate([+21/2,+14/2,3]) cylinder(3.2, 6.4/2, 6.4/2);
            translate([+21/2,-14/2,3]) cylinder(3.2, 6.4/2, 6.4/2);
            translate([-21/2,+14/2,3]) cylinder(3.2, 6.4/2, 6.4/2);
            translate([-21/2,-14/2,3]) cylinder(3.2, 6.4/2, 6.4/2);
        }
        translate([zakl_kostka_d,zakl_kostka_s/2,nema_17_obrys/2+7+mot_posun_z]) rotate([0,90, 0]) nema_17_holes(h=30, d=5);
    }
    
}


drzak_motoru();