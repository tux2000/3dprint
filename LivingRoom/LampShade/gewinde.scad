use <threads-library-by-cuiso-v1.scad>

//a list of examples of use for library threads-library-by-cuiso-v1.scad

//EXAMPLE, a rod with no standard pitch:
difference(){
    thread_for_screw_fullparm(diameter=10, length=6, pitch=1); 
    translate([-3.5/2,-6/2])
        cube([3.5,6,6]);
}

translate([0,0,6])
union(){
    difference(){
        thread_for_screw_fullparm(diameter=10, length=6, pitch=2); 
        translate([-3.5/2,-6/2])
            cube([3.5,6,6]);
        translate([-1/2,-10/2])
            cube([1,10,6]);    
    }
    intersection(){
    thread_for_screw_fullparm(diameter=10, length=6, pitch=2); 
    union(){    
    translate([-3.5/2,-6/2,5])
        rotate([-90,0,0])
            cylinder(r=0.15,h=6);    
    translate([-3.5/2,-6/2,2])
        rotate([-90,0,0])
            cylinder(r=0.001,h=6);    
    translate([3.5/2,-6/2,3.5])
        rotate([-90,0,0])
            cylinder(r=0.05,h=6);    

    }
    }
}