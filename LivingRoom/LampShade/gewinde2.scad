use <threads-library-by-cuiso-v1.scad>

//a list of examples of use for library threads-library-by-cuiso-v1.scad

//EXAMPLE, a rod with no standard pitch:
difference(){
    thread_for_screw_fullparm(diameter=10, length=6, pitch=1); 
    translate([-3.5/2,-6/2])
        cube([3.5,6,6]);
}
//
translate([0,0,6])
difference(){
translate([-13.5/2,-16/2,0])
cube([13.5,16,10]);
translate([-3.5/2,-6/2,0])
    cube([3.5,6,10]);
translate([3.5/2,0,5])
rotate([0,90,0])
thread_for_nut_fullparm(
    diameter=5, 
    length=5, 
    pitch=1, 
    usrclearance=0.1);

}


translate([3.5/2,0,5+6])
    rotate([0,90,0])
        difference(){
            thread_for_screw_fullparm(diameter=5, length=5+3.5, pitch=1);
            translate([0,0,5+3.5-2])
                cylinder(d=2,h=2,$fn=6);
        }