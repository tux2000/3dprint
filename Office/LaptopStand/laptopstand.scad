w = 25;
d = 13;
d2 = 10;
l1 = 160;
l2 = 50;

alpha = 42;
beta = alpha;

computer = 14;

module rotate_about_pt(a, pt) translate(pt) rotate(a)
translate(-pt) children();


// Base

hull(){
translate([-(computer+d2)/cos(beta),0,0])
    cylinder(h=w,d=d);
translate([l1,0,0])
    cylinder(h=w,d=d);
}

// support beam
intersection(){
rotate_about_pt([0,0,-(90-alpha)],[l1,0,0])
hull(){
cylinder(h=w,d=d);
translate([l1,0,0])
    cylinder(h=w,d=d);
}

rotate([0,0,alpha])
translate([0,-l1*2+d/2,0])
cube([l1*2,l1*2,w]);
}


// bottom support
hull(){
cylinder(d=d,h=w);
rotate([0,0,alpha])
    translate([l2,0,0])
        cylinder(d=d,h=w);
//translate([l2,0,0])
//    cylinder(d=d,h=w);
}

// top support
translate([-(computer+d/2+d2/2)/cos(beta),0,0])
hull(){
cylinder(d=d2,h=w);
rotate([0,0,beta])
    translate([l2-(computer+d/2+d2/2)*tan(beta)+(computer+d/2+d2/2)/cos(beta),0,0])
        cylinder(d=d2,h=w);
}

// front
//hull(){
//translate([-d/2+d2/2,(computer+d/2+d2/2)/cos(beta),0])
//cylinder(d=d2,h=w);
//translate([-d/2+d2/2,0,0])
//cylinder(d=d2,h=w);
//}

