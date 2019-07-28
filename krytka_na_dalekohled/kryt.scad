prumer = 175;
stena = 2;
vyska = 15;

difference() {
    cylinder(d=prumer+stena*2, h=vyska, $fn=150);

    translate([0, 0, stena])
        cylinder(d=prumer, h=vyska, $fn=150);
}