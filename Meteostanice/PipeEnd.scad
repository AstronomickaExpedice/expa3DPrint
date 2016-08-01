$fn = 10;


inner_r = 18/2+0.2;
wall_min = 1.2;



module blend(){
difference(){ 
union(){
rotate_extrude(convexity = 0)
        translate([20, 0, 0])
        difference (){
                circle(r = inner_r+wall_min);
                circle(r = inner_r+0.15);
        }
}

translate([0,-50,-50]) cube(100);
//translate([-50,0,-50]) cube(100);
}

difference(){
    union(){
        translate([0,20,0])  rotate([0,90,0]) cylinder(r = inner_r+wall_min, h= 10);
        translate([0,-20,0])  rotate([0,90,0]) cylinder(r = inner_r+wall_min, h= 10);
    }
    translate([-2,-20,0])  rotate([0,90,0]) cylinder(r = inner_r+0.15, h= 15);
    translate([-2,20,0])  rotate([0,90,0]) cylinder(r = inner_r+0.15, h= 15);
    
}
}

module splitter(){
    difference(){
        union(){
            cylinder(21, inner_r+wall_min*2+0.2, inner_r+wall_min*2+0.2);
        }
            cylinder(21, inner_r, inner_r);
            cylinder(10, inner_r+wall_min, inner_r+wall_min);
            translate([0,0,10+1]) cylinder(10, inner_r+wall_min, inner_r+wall_min);
    }
}

module end(){
    difference(){
        union(){
            cylinder(11, inner_r+wall_min*2+0.2, inner_r+wall_min*2+0.2);
        }
            cylinder(21, inner_r, inner_r);
            cylinder(10, inner_r+wall_min, inner_r+wall_min);
            //translate([0,0,10+1]) cylinder(10, inner_r+wall_min, inner_r+wall_min);
    }
    
    
}


difference (){ blend(); translate([0,0,-50]) cube(100,100,100, center=true);}
//blend();
//translate([20, 0, 0])splitter();
translate([25, 20, 11]) rotate([0,180,0]) end();
