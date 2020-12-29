use <boxes.scad>

d1 = 37;
d2 = 27;
h = 50;

wall=1.6;

a = 53;
b = 60;
ha = 5;
hb = 2;
ra = 15;

difference(){
    union(){
        cylinder(d1=d1+wall, d2=d2+wall, h=h+wall);
        translate([-a/2,-a/2,0])
            translate([a/2,a/2,ha/2])
                roundedBox([a, a, ha], ra, true);
            //cube([a,a,ha]); 
        translate([-b/2,-b/2,0])
            cube([b,b,hb]); 
    }
    cylinder(d1=d1, d2=d2, h=h);
    for(j = [15:15:h]){
        rotate([0,0,j*1.4])
            translate([0,0,j])
                holes(d=7);
    }
}


module holes(d=5,fn=6,l=d1){
    for(i = [0 : 40 : 360]){
        rotate([90,0,i])
            cylinder(d=d,$fn=fn,h=l);
    }
}

