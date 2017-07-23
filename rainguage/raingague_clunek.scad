$fn=150;
difference (){
        hull() {
        cube ([80,48,1]);
        translate ([80/2-1/2,0,0]) cube ([1,48,30]);
    } 
    translate ([0,1,1]) cube ([80,46,30]);
    translate ([80/2,0,2+3.4/2]) rotate ([-90]) cylinder (48,3.4/2,3.4/2);
    translate ([80/2,0,20]) rotate ([-90]) cylinder (1,6/2,6/2);
}
difference (){
    hull() {
        translate ([80/2-1/2,0,0]) cube ([1,48,30]);
        translate ([80/2-6/2,0,0]) cube ([6,48,1]);
    }
    translate ([80/2,0,2+3.4/2]) rotate ([-90]) cylinder (48,3.4/2,3.4/2);
    translate ([80/2,0,20]) rotate ([-90]) cylinder (1,6/2,6/2);
}