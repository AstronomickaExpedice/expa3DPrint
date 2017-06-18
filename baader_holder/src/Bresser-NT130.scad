$fn = 80; 

outer_d = 166;
inner_d = 130;
filter_d = 150;

ring_od = 152.3;
ring_id = ring_od-4;


module adapter(){
    difference(){
        cylinder(2.5, outer_d/2, outer_d/2);
        translate([0,0,-0.1]) cylinder(2.2,  inner_d/2, inner_d/2);
        translate([0,0,1.3]) cylinder(2,  filter_d/2, filter_d/2);
    }
    
    difference(){
        union(){
            cylinder(13, ring_od/2, ring_od/2);
            translate([0,0,13]) cylinder(2, ring_od/2, ring_od/2-1);
        }
        translate([0,0,-0.1]) cylinder(15+0.2,  ring_id/2, ring_id/2);
    }
    
    difference(){union(){
        rotate (0) translate([135/2, 0, 0]) cylinder(2, 20, 20);
        rotate (30+90) translate([135/2, 0, 0]) cylinder(2, 20, 20);
        rotate (-30-90) translate([135/2, 0, 0]) cylinder(2, 20, 20);
        }
    
        translate([0,0,-0.1]) cylinder(2+0.2,  filter_d/2, filter_d/2);
    }
    
}





adapter();