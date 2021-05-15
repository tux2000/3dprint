rotate([0,90,0]){

sphere(d = 17);
cylinder(d=8, h=17/2+4);
translate([0,0,17/2+4])
    cylinder(d1=8, d2=17, h=5);
translate([0,0,17/2+4+5])
    cylinder(d1=17, d2=17, h=10);    
    
}

translate([17/2+4+5+10,-17/2,-26/2]){
    difference(){
    cube([16,17,26]);
    translate([3,0,3])
        cube([10,17,20]);    
    translate([5,0,23])
        cube([6,17,3]);    
    }
}