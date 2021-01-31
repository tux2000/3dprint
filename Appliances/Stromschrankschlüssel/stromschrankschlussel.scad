kante = 14.5;
R = 1/sqrt(3)*kante;

difference(){
union(){
translate([0,0,3])
difference(){

cylinder(r=R-1,h=10,$fs=0.1);

translate([0,0,4])
  cylinder(r=R,h=6,$fn=3);
}

for(r = [0:20:360]){
    rotate([0,0,r])
        translate([15,0,0])
            cylinder(d=5,h=3, $fn=30);
}

difference(){
cylinder(r=15,h=3)

cylinder(r=3.8,h=4,$fn=6);
}
}

translate([0,11,0])
hull(){
translate([-3,0,0])
    cylinder(d=3,h=10,$fn=50);
translate([3,0,0])
    cylinder(d=3,h=10,$fn=50);
}
}