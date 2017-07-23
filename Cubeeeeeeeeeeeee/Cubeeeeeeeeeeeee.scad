hrana = 10;
sloup = 8;
posun = (hrana - sloup) / 2;
difference(){
  union(){

translate([hrana*0, hrana*0, 0]) cube([hrana*6, hrana, 2]);
translate([hrana*1, hrana*1, 0]) cube([hrana*6, hrana, 2]);
translate([hrana*1, hrana*-1, 0]) cube([hrana*6, hrana, 2]);
translate([hrana*2, hrana*2, 0]) cube([hrana*6, hrana, 2]);
translate([hrana*2, hrana*-2, 0]) cube([hrana*6, hrana, 2]);
translate([hrana*3, hrana*3, 0]) cube([hrana*5, hrana, 2]);
translate([hrana*3, hrana*-3, 0]) cube([hrana*5, hrana, 2]);
translate([hrana*4, hrana*4, 0]) cube([hrana*3, hrana, 2]);
translate([hrana*4, hrana*-4, 0]) cube([hrana*3, hrana, 2]);

translate([hrana*0 + posun, hrana*0 + posun, 0]) cube([sloup, sloup, 8]);

translate([hrana*1 + posun, hrana*1 + posun, 0]) cube([sloup, sloup, 10]);
translate([hrana*1 + posun, hrana*-1 + posun, 0]) cube([sloup, sloup, 7]);
translate([hrana*1 + posun, hrana*0 + posun, 0]) cube([sloup, sloup, 11]);

translate([hrana*2 + posun, hrana*2 + posun, 0]) cube([sloup, sloup, 12]);
translate([hrana*2 + posun, hrana*-2 + posun, 0]) cube([sloup, sloup, 5]);
translate([hrana*2 + posun, hrana*1 + posun, 0]) cube([sloup, sloup, 11]);
translate([hrana*2 + posun, hrana*-1 + posun, 0]) cube([sloup, sloup, 9]);
translate([hrana*2 + posun, hrana*-0 + posun, 0]) cube([sloup, sloup, 14]);

translate([hrana*3 + posun, hrana*3 + posun, 0]) cube([sloup, sloup, 7]);
translate([hrana*3 + posun, hrana*-3 + posun, 0]) cube([sloup, sloup, 9]);
translate([hrana*3 + posun, hrana*0 + posun, 0]) cube([sloup, sloup, 10]);
translate([hrana*3 + posun, hrana*1 + posun, 0]) cube([sloup, sloup, 8]);
translate([hrana*3 + posun, hrana*-1 + posun, 0]) cube([sloup, sloup, 9]);
translate([hrana*3 + posun, hrana*2 + posun, 0]) cube([sloup, sloup, 5]);
translate([hrana*3 + posun, hrana*-2 + posun, 0]) cube([sloup, sloup, 11]);

translate([hrana*4 + posun, hrana*4 + posun, 0]) cube([sloup, sloup, 4]);
translate([hrana*4 + posun, hrana*-4 + posun, 0]) cube([sloup, sloup, 6]);
translate([hrana*4 + posun, hrana*3 + posun, 0]) cube([sloup, sloup, 11]);
translate([hrana*4 + posun, hrana*-3 + posun, 0]) cube([sloup, sloup, 12]);
translate([hrana*4 + posun, hrana*2 + posun, 0]) cube([sloup, sloup, 7]);
translate([hrana*4 + posun, hrana*-2 + posun, 0]) cube([sloup, sloup, 8]);
translate([hrana*4 + posun, hrana*1 + posun, 0]) cube([sloup, sloup, 15]);
translate([hrana*4 + posun, hrana*-1 + posun, 0]) cube([sloup, sloup, 15]);
translate([hrana*4 + posun, hrana*0 + posun, 0]) cube([sloup, sloup, 12]);

translate([hrana*5 + posun, hrana*4 + posun, 0]) cube([sloup, sloup, 9]);
translate([hrana*5 + posun, hrana*-4 + posun, 0]) cube([sloup, sloup, 8]);
translate([hrana*5 + posun, hrana*3 + posun, 0]) cube([sloup, sloup, 12]);
translate([hrana*5 + posun, hrana*-3 + posun, 0]) cube([sloup, sloup, 6]);
translate([hrana*5 + posun, hrana*2 + posun, 0]) cube([sloup, sloup, 6]);
translate([hrana*5 + posun, hrana*-2 + posun, 0]) cube([sloup, sloup, 10]);
translate([hrana*5 + posun, hrana*1 + posun, 0]) cube([sloup, sloup, 10]);
translate([hrana*5 + posun, hrana*0 + posun, 0]) cube([sloup, sloup, 10]);

translate([hrana*6 + posun, hrana*4 + posun, 0]) cube([sloup, sloup, 6]);
translate([hrana*6 + posun, hrana*-4 + posun, 0]) cube([sloup, sloup, 7]);
translate([hrana*6 + posun, hrana*3 + posun, 0]) cube([sloup, sloup, 9]);
translate([hrana*6 + posun, hrana*2 + posun, 0]) cube([sloup, sloup, 13]);
translate([hrana*6 + posun, hrana*1 + posun, 0]) cube([sloup, sloup, 5]);
translate([hrana*6 + posun, hrana*-1 + posun, 0]) cube([sloup, sloup, 10]);
translate([hrana*6 + posun, hrana*-3 + posun, 0]) cube([sloup, sloup, 8]);


translate([hrana*7 + posun, hrana*3 + posun, 0]) cube([sloup, sloup, 7]);
translate([hrana*7 + posun, hrana*-3 + posun, 0]) cube([sloup, sloup, 5]);
translate([hrana*7 + posun, hrana*2 + posun, 0]) cube([sloup, sloup, 10]);
translate([hrana*7 + posun, hrana*-2 + posun, 0]) cube([sloup, sloup, 11]);
}
translate([hrana*5 + posun, hrana*-1 + posun, 0]) cube([sloup, sloup, 2]);
translate([hrana*6 + posun, hrana*-2 + posun, 0]) cube([sloup, sloup, 2]);
}
























