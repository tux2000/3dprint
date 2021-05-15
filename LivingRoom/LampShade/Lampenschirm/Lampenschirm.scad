include <BOSL/constants.scad>
use <BOSL/beziers.scad>

mode = "segment";

if(mode == "preview"){
for ( i = [0 : 24 : 360] ){
    rotate([0,0,i])
        translate([35,0,0])
            rotate([90,90,45])
                segment();
}

translate([0,0,-20])
    difference(){
        cylinder(d=85,h=2);
        cylinder(d=45,h=2);
    }

translate([0,0,-80])
    difference(){
        cylinder(d=110,h=2);
        cylinder(d=80,h=2);
    }
}

if(mode == "segment"){
// Segment
    segment();
}

if(mode == "upper"){
    // Upper Ring
    translate([0,0,20])
    difference(){
        translate([0,0,-20])
            difference(){
                cylinder(d=85,h=2);
                cylinder(d=45,h=2);
            }

        for ( i = [0 : 24 : 359] ){
            rotate([0,0,i])
                translate([35,0,0])
                    rotate([90,90,45])
                        segment(h=0.8);
        }
    }
}

if(mode == "lower"){
    // Lower Ring
    translate([0,0,80])
    difference(){
        translate([0,0,-80])
        difference(){
            cylinder(d=110,h=2);
            cylinder(d=80,h=2);
        }

        for ( i = [0 : 24 : 359] ){
            rotate([0,0,i])
                translate([35,0,0])
                    rotate([90,90,45])
                        segment(h=0.8);
        }
    }
}


module segment(h=0.6){
//    cube([100,20,1]);
    bez = [
        [0,10], [0,30], 
        [20,30], [50,40], [70,45], 
        [70,45], [110,60], [130,70], 
        [140,80], [150,70], [155,60], 
        [160,60], [150,40], [80,00], 
        [0,-20], [0,10]
    ];
    bez = [
        [0,10], [-5,40], 
        [50,40], [90,50], [120,60],     
        [130,100], [150,90], [170,80], 
        [150,35], [110,25], [80,15],     
        [5,-20], [0,10]
    ];

    //trace_bezier(bez, N=3, size=3);
    difference(){
    linear_extrude(height=0.6) bezier_polygon(bez, N=3);
    rotate([45,0,0])
    translate([20,-35,0])
        rotate([0,90,0])
            cylinder(d=75,h=2);
    rotate([45,0,0])
    translate([80,-35,0])
        rotate([0,90,0])
            cylinder(d=100,h=2);
    }
}


