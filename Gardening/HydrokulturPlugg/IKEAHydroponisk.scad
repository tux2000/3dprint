use <boxes.scad>

wall=1.6;

a = 53;
b = 60;
ha = 4;
hb = 1.5;
ra = 15;

difference(){
    union(){
        translate([-a/2,-a/2,0])
            translate([a/2,a/2,ha/2])
                roundedBox([a, a, ha], ra, true);
            //cube([a,a,ha]); 
        translate([-b/2,-b/2,0])
            cube([b,b,hb]); 
    }
    translate([-a/2,-a/2,hb])
        translate([a/2,a/2,ha/2])
            roundedBox([a-2, a-2, ha], ra, true);    
}

