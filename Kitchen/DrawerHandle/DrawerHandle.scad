h = 97.2;
d = 16;
w = 10;

wall = 1.4;

r = 15;


difference(){

union(){
cube([h+wall*2,d+wall*2,w]);
translate([h/2+1,0,0]){
    difference(){
    cylinder(r=r+wall,h=w);
    cylinder(r=r,h=w);
    translate([-r,0,0])
        cube([r*2+wall,r+wall,w]);
    }
}
}
    
translate([wall,wall,0])
    cube([h,d,w]);

}