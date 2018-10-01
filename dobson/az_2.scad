$fn = 100;

difference() {
	difference() {
		union() {
			translate(v = [-20.0000000000, -10.0000000000, 0]) {
				cube(size = [40.0000000000, 20, 4]);
			}
			difference() {
				difference() {
					difference() {
						hull() {
							translate(v = [0, 0, 17.0000000000]) {
								rotate(a = [90, 0, 0]) {
									translate(v = [0, 0, -10.0000000000]) {
										cylinder(d = 13, h = 20);
									}
								}
							}
							translate(v = [-8.0000000000, -10.0000000000, 0]) {
								cube(size = [16, 20, 1]);
							}
						}
						translate(v = [0, 0, 17.0000000000]) {
							rotate(a = [90, 0, 0]) {
								translate(v = [0, 0, -10.0250000000]) {
									cylinder(d = 5.4000000000, h = 20.1000000000);
								}
							}
						}
					}
					translate(v = [0, 0, 17.0000000000]) {
						rotate(a = [90, 0, 0]) {
							translate(v = [0, 0, -10.5000000000]) {
								cylinder(d = 9.0000000000, h = 4);
							}
							translate(v = [0, 0, 6.5000000000]) {
								cylinder($fn = 6, d = 9.2000000000, h = 4);
							}
						}
					}
				}
				translate(v = [0, 0, 4]) {
					translate(v = [-50, -3.0000000000, -50]) {
						cube(size = [100, 6.0000000000, 100]);
					}
				}
			}
		}
		translate(v = [-12.0000000000, 0, 0]) {
			cylinder(d = 3.4000000000, h = 4);
			translate(v = [0, 0, 3]) {
				cylinder(d = 6.0000000000, h = 4);
			}
		}
	}
	translate(v = [12.0000000000, 0, 0]) {
		cylinder(d = 3.4000000000, h = 4);
		translate(v = [0, 0, 3]) {
			cylinder(d = 6.0000000000, h = 4);
		}
	}
}