/* BATHINOV-PARAMETRIC-ENGLISH-V2
by
Philippe LECA - 2015-07-24
http://www.astrokraken.fr
leca.philippe@neuf.fr

Updates :
- number of grooves calculated according to focal length
- useful ressources and comments

Very useful ressource :
http://astrojargon.net/MaskGenerator.aspx

The general rule to holes width is f/s=150-200,
where  :
    f is focal length,
    s is hole step size.
So for telescope with 1500mm focal length the step size is 1500/150=10mm 
(5mm hole, 5mm for uncut space).
If holes become too small the formula becomes 3f/s=150-200.
eg for 800mm scope you need to cut 2400/s=200 s=2400/200=12mm 
(6mm cut +6mm uncut).
The angled cuts are placed at 40 degrees to each other.
*/

// general paarmeters ---------------------------
angle=22; // groove tilt angle
tmask=0.15*4; // thickness of the mask
tcap=0.4*2.4; // thickness of the cap's walls
daperture=97; // aperture diameter
focal=50; // focal length of the lens or telescope
bahtinovfactor=15; // usually 150 to 200

// cap parameters ---------------------------

dintcap=102; // internal diameter of the cap
dextcap=dintcap+2*tcap; // external diameter of the cap
heightcap=25; // height of the cap(=tcap if flat mask)

// for MAK or SCT : central hole and ring --------
dintcentralhole=0; // =0 if no central hole
dcentralring=0; // =0 if no central ring

// groove array parameters --------------------
widthgroove=(focal/bahtinovfactor)/2; // groove width
widthwire=widthgroove; // width of the "wires" between grooves
excessgroove=2; // number of excessive peripherical grooves (2 by default)

$fn=220;

numberdraft=floor(daperture/(widthgroove+widthwire));
numbergroove=(floor(numberdraft/2-excessgroove))*2+1;



difference(){
    union(){
        // CENTRAL RING FOR MAK OR SCT ===================
        translate([0,0,0])cylinder(d=dcentralring,h=  tcap);
        // ARRAY ======================================
        difference(){ // vertical array
            union(){
            translate([0,0,0])cylinder(d=daperture,h=tmask);
            }
            union(){
                // half-disc
                translate([0,-daperture/2-5,-1])cube([daperture/2+5,daperture+10,tmask+2]);
                // groove array
                for (i=[1:numbergroove]){
                    translate([-daperture/2,-(numbergroove+1)*(widthgroove+widthwire)/2-widthgroove/2+i*(widthgroove+widthwire),-1])cube([daperture,widthgroove,tcap+2]);
                }
            }
        }
        difference(){ // right tilted array
            union(){
                translate([0,0,0])cylinder(d=daperture,h=tmask);
            }
            union(){
                // quarter disc
                translate([-daperture/2-5,-daperture/2-5,-1])cube([daperture/2+5,daperture+10,tmask+2]);
                translate([0,0,-1])cube([daperture/2+5,daperture/2+5,tmask+2]);
                // groove array
                rotate([0,0,180-angle]){
                    for (i=[2:numbergroove-1]){
                    translate([-daperture/2,-(numbergroove+1)*(widthgroove+widthwire)/2-widthgroove/2+i*(widthgroove+widthwire),-1])cube([daperture,widthgroove,tcap+2]);
                    }
                }
            }
        }
        difference(){ // left tilted tilted 
            union(){
                translate([0,0,0])cylinder(d=daperture,h=tmask);
            }
            union(){
                // quarter disc
                translate([-daperture/2-5,-daperture/2-5,-1])cube([daperture/2+5,daperture+10,tmask+2]);
                translate([0,-daperture/2-5,-1])cube([daperture/2+5,daperture/2+5,tmask+2]);
                // groove array
                rotate([0,0,180+angle]){
                    for (i=[2:numbergroove-1]){
                    translate([-daperture/2,-(numbergroove+1)*(widthgroove+widthwire)/2-widthgroove/2+i*(widthgroove+widthwire),-1])cube([daperture,widthgroove,tcap+2]);
                    }
                }
            }
        }
        // STIFFENERS =============================
        translate([0,-widthgroove,0])cube([daperture/2,2*widthgroove,tmask]);
        translate([-widthgroove,-daperture/2,0])cube([widthgroove*2,daperture,tmask]);
    
        // EXTERNAL RING AND CYLINDER CAP ========================
        difference(){
            translate([0,0,0])cylinder(d=dextcap,h=heightcap);
            translate([0,0,tcap])cylinder(d=dintcap,h=heightcap);
            translate([0,0,-1])cylinder(d=daperture,h=tcap+2);
        }
    }
    // CENTRAL HOLE FOR MAK OR SCT ================
    translate([0,0,-1])cylinder(d=dintcentralhole,h=tcap+2);
}


