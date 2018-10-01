$fn = 100;

difference() {
	difference() {
		difference() {
			difference() {
				difference() {
					difference() {
						hull() {
							union() {
								union() {
									union() {
										union() {
											cube(size = 0);
											rotate(a = [0, 0, 0]) {
												translate(v = [0, 12.5000000000, 0]) {
													cylinder(d = 8, h = 8);
													translate(v = [0, 0, 8]) {
														cylinder(d = 6.5000000000, h = 1);
													}
												}
											}
										}
										rotate(a = [0, 0, 90]) {
											translate(v = [0, 12.5000000000, 0]) {
												cylinder(d = 8, h = 8);
												translate(v = [0, 0, 8]) {
													cylinder(d = 6.5000000000, h = 1);
												}
											}
										}
									}
									rotate(a = [0, 0, 180]) {
										translate(v = [0, 12.5000000000, 0]) {
											cylinder(d = 8, h = 8);
											translate(v = [0, 0, 8]) {
												cylinder(d = 6.5000000000, h = 1);
											}
										}
									}
								}
								rotate(a = [0, 0, 270]) {
									translate(v = [0, 12.5000000000, 0]) {
										cylinder(d = 8, h = 8);
										translate(v = [0, 0, 8]) {
											cylinder(d = 6.5000000000, h = 1);
										}
									}
								}
							}
						}
						translate(v = [0, 0, -0.1000000000]) {
							cylinder(d = 16, h = 5.5000000000);
						}
					}
					cylinder(d = 12, h = 9.1000000000);
				}
				rotate(a = [0, 0, 0]) {
					translate(v = [0, 12.5000000000, 0]) {
						translate(v = [0, 0, 4]) {
							rotate(a = [180, 0, 0]) {
								union() {
									cylinder(d = 3.4000000000, h = 10);
									translate(v = [0, 0, -10.2000000000]) {
										cylinder($fn = 6, d = 5, h = 10);
									}
								}
							}
						}
					}
				}
			}
			rotate(a = [0, 0, 90]) {
				translate(v = [0, 12.5000000000, 0]) {
					translate(v = [0, 0, 4]) {
						rotate(a = [180, 0, 0]) {
							union() {
								cylinder(d = 3.4000000000, h = 10);
								translate(v = [0, 0, -10.2000000000]) {
									cylinder($fn = 6, d = 5, h = 10);
								}
							}
						}
					}
				}
			}
		}
		rotate(a = [0, 0, 180]) {
			translate(v = [0, 12.5000000000, 0]) {
				translate(v = [0, 0, 4]) {
					rotate(a = [180, 0, 0]) {
						union() {
							cylinder(d = 3.4000000000, h = 10);
							translate(v = [0, 0, -10.2000000000]) {
								cylinder($fn = 6, d = 5, h = 10);
							}
						}
					}
				}
			}
		}
	}
	rotate(a = [0, 0, 270]) {
		translate(v = [0, 12.5000000000, 0]) {
			translate(v = [0, 0, 4]) {
				rotate(a = [180, 0, 0]) {
					union() {
						cylinder(d = 3.4000000000, h = 10);
						translate(v = [0, 0, -10.2000000000]) {
							cylinder($fn = 6, d = 5, h = 10);
						}
					}
				}
			}
		}
	}
}