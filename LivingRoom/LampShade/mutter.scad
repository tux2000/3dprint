use <threads-library-by-cuiso-v1.scad>

difference(){
cylinder(d=16,h=6,$fn=6);
thread_for_nut_fullparm(diameter=10, length=6, pitch=2, usrclearance=0.2);
}