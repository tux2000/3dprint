x = 50;
y = 17;
y2 = 7;

y3 = (y-y2)/2;
y4 = y-y2;

h1 = 0.2;
h2 = 7;
h3 = 1.2;

t = x/12;

module tooth(){
    rotate([0,0,45])
        translate([-t/2,-t/2,0])
            cube([t,t,t]);
}


difference(){
union(){
cube([x,y,h1]);

translate([0,y2,0])
    cube([x,y4,h3]);

hull(){
cube([x,y2,0.1]);
translate([0,y2,0])
    cube([x,0.1,h2]);
}
}


for(i = [0 : 1.4*t : x+t]){
translate([i,0,0])
    tooth();
}

translate([10,y2+y3,0])
    cylinder(d=1,h=h2);

translate([x-10,y2+y3,0])
    cylinder(d=1,h=h2);


}