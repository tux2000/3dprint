difference(){
union(){
cylinder(d1=16.7,d2=16.7,h=10);
cylinder(d=16.7+3,h=1);
}
translate([6.69+0.5,-5,0])
    cube([5,10,10]);
}