
prumer_tyce_1 = 17.5;
prumer_tyce_2 = 24.8;

vyska = 12;
sirka = 30;
delka = 60;
delka2 = 90;

//Screw diameter and nut for M3 [mm]
M3_screw_diameter = 3.5;
M3_nut_height = 2.7;
M3_nut_diameter = 6.6;
M3_screw_head_height = 3;
M3_nut_pocket = 5.6;

difference() {
    translate ([-delka/2, -sirka/2, 0])
        union () {
            cube ([delka, sirka, vyska]);
            translate ([delka/2, 0, 0])
                rotate([0, 0, 45])
                cube ([sirka, delka2*2/3, vyska]);
        }

    //hlavni
    translate ([-delka/2-1, 0, 0])
        rotate ([0, 90, 0])
            cylinder (h=delka+2, d=prumer_tyce_1, $fn=100);

    //sikma
    translate ([7, 0, 0])
        rotate ([0, -90, -45])
            cylinder (h=delka2+2, d=prumer_tyce_1, $fn=100);

    //mezera
    cube ([120, 120, 0.5], center=true);

    //srouby M3x14
    translate ([-9, 31, 0]) {
        cylinder (h=4-0.2, d=M3_screw_diameter, $fn=100);
        translate ([0, 0, 4])
            cylinder (h=20, d=8.2, $fn=4);
    }

    translate ([-27, 17, 0]) {
        cylinder (h=4-0.2, d=M3_screw_diameter, $fn=100);
        translate ([0, 0, 4])
            cylinder (h=20, d=8.2, $fn=4);
    }

    translate ([0, -11.5, 0]) {
        cylinder (h=4-0.2, d=M3_screw_diameter, $fn=100);
        rotate ([0, 0, 45])
            translate ([0, 0, 4])
                cylinder (h=20, d=8.2, $fn=4);
    }
}
