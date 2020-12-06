use <boxes.scad>

$fn = 50;

center = [19,14,11];
rim = [22,17,3];

wall = 3;

r = 6;
schraube = 3;

// main body
difference(){
translate([0.5*(rim[0]+2*wall),0.5*(rim[1]+2*wall),0.5*(rim[2]+2*wall+wall)])    
roundedBox([rim[0]+2*wall,rim[1]+2*wall,rim[2]+2*wall+wall],1,false);

//rim    
translate([wall,wall,wall])
 cube([rim[0],rim[1],rim[2]+wall]);
//entrance
translate([wall,0,1.5*wall])
 cube([rim[0],rim[1],rim[2]+0.5*wall]);
entrance(h=wall/2);

// center
translate([wall+(rim[0]-center[0])/2,0,0])
 cube([center[0],center[1]+wall+(rim[1]-center[1])/2,rim[2]+2*wall]);

// schraube
translate([(rim[0]+2*wall)/2,(rim[1]+2*wall)/2,rim[2]+2*wall]){
    cylinder(h=wall,d=schraube);
    cylinder(h=wall/2,d2=schraube,d1=schraube*2);
}
}



//translate([0,0,rim[2]+wall]){
//    hull(){
//    cube([rim[0]+2*wall,rim[1]+2*wall,wall]);
//    translate([-r*2,(rim[1]/2+wall),0])
//        cylinder(h=wall,r=r);
//    translate([rim[0]+2*wall+r*2,(rim[1]/2+wall),0])
//        cylinder(h=wall,r=r);
//    }
//}


module entrance(h=wall){

translate([0,-(wall-h),0])
translate([0,wall,0.5*wall+rim[2]])
rotate([90,0,0])
translate([wall,0,0])
hull(){
    cube([rim[0],rim[2]+0.5*wall,0.01]);
    translate([0,0*(rim[2]+0.5*wall),h])
        cylinder(h=0.01,r=wall);
    translate([0,1*(rim[2]+0.5*wall),h])
        cylinder(h=0.01,r=wall);
    translate([rim[0],0*(rim[2]+0.5*wall),h])
        cylinder(h=0.01,r=wall);
    translate([rim[0],1*(rim[2]+0.5*wall),h])
        cylinder(h=0.01,r=wall);
}

}