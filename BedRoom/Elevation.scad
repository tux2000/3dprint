use <boxes.scad>

difference(){
translate([0,0,2.5])
    roundedBox([38, 43, 5], 5, true);
translate([0,0,1+3])
    roundedBox([35, 40, 2], 5, true);
}