$fn=100;

k = 5;
km = 5.5;
d1= 6.4;
d2=8.7;
dm = 11.5;
do=15;
dob=25;
t=2;


difference(){
        union(){
            cylinder(h=k+2, d = dob);
            cylinder(h=k+km+t+0.5, d = do);
        }
        translate([0,0,-0.1])cylinder(h=k, d = d2);
        translate([0,0,k+0.25]) cylinder(h=k+km+t, d = d1);
        translate([0,0,k+0.25+t]) cylinder(h=k+km+t, d = dm, $fn=6);
        for(i = [1:10]){
            rotate(360/10*i) translate([dob/2+3, 0, 0]) cylinder(h=10, d=8);
        }
}