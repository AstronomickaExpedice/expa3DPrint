$fn=100;

ls = 65;
lk = 43;
l = (ls-lk)/2;



module a(){
//translate([0,0,l-5-0.2]) cylinder(h=0.2  ,d=12);
difference(){
    union(){
            cylinder(h=1, d=25);
            cylinder(h=l-5 ,d=12);
            cylinder(h=l+5  ,d=9-0.3);
        
    }
    translate([-1, -5, l-3+2.2]) cube([2, 10, 10]);

    cube([3, 10, 20], center=true);
    cube([10, 3, 20], center=true);
    cylinder(h=20, d=5);
}

}




module b(){
//translate([0,0,l-1-0.2]) cylinder(h=0.2  ,d=12);
difference(){
    union(){
            cylinder(h=1, d=25);
            cylinder(h=l ,d=12);
            cylinder(h=l+13  ,d=9-0.3);
        
    }
    translate([-1, -5, l+8]) cube([2, 10, 10]);

    cube([3, 10, 20], center=true);
    cube([10, 3, 20], center=true);
    cylinder(h=20, d=5);
}
}


translate([30, 0, 0]) a();

b();