difference(){

linear_extrude(height=130, twist=45, scale=1.45)
    import(file = "LampShade.pattern.svg", center = true);

cylinder(d=36,h=150);
    
}