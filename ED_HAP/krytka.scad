$fn = 250;

din = 116+0.8;
dout= 116+5;
height = 18;

difference(){
	union(){
		cylinder(d1=dout-3, d2=dout, h = 2);
		translate([0, 0, 2])
			cylinder(d = dout, h = height);
	}

	translate([0, 0, 2])
		cylinder(d = din, h = height+1);
	linear_extrude(0.3)
		mirror([1, 1, 0])
		text("HAP Brno", valign = "center", halign = "center");
}
