module bottom(){
    difference(){
        cylinder(d1=19,d2=22,h=73,$fn=pixel);
        translate([0,0,-1])    cylinder(d1=18,d2=18.5,h=72,$fn=pixel);
    }
    translate([0,0,73])    difference(){
        cylinder(d1=22,d2=15,h=67,$fn=pixel);
        translate([0,0,-1])    cylinder(d1=20,d2=13,h=69,$fn=pixel);
    }
    translate([0,0,140])    difference(){
        cylinder(d=15,h=40,$fn=pixel);
        translate([0,0,-1])    cylinder(d=13,h=42,$fn=pixel);
        translate([-10,0,20])    rotate([0,90,0])    cylinder(d=1,h=20);
    }
    for(i=[0:4])    rotate([0,0,90*i])    hull(){
        translate([80,0,0])    cylinder(d=2,h=1,$fn=pixel/10);
        translate([9.5,-1,0])    cube([1,2,1]);
        translate([9.5,-1,100])    cube([1,2,1]);
    }
}
module middle(){
    translate([0,0,140])    difference(){
        cylinder(d=13,h=40,$fn=pixel);
        translate([0,0,-1])    cylinder(d1=12,d2=11,h=42,$fn=pixel);
        translate([-10,0,20])    rotate([0,90,0])    cylinder(d=1,h=20);
    }
    translate([0,0,180])    difference(){
        cylinder(d=15,h=100,$fn=pixel);
        translate([0,0,-1])    cylinder(d1=11,d2=13,h=5,$fn=pixel);
        translate([0,0,5])    cylinder(d=13,h=100,$fn=pixel);
    }
    translate([0,0,310])    difference(){
        scale([1,1,2.43])    sphere(15,$fn=pixel);
        scale([1,1,2.43])    sphere(14,$fn=pixel);
        translate([-30,-30,-10])    cube([60,60,50]);
        translate([0,0,-46])    cylinder(d=13,h=100,$fn=pixel);
    }
    translate([-6.5,-1,230])    difference(){
        cube([13,2,50]);
        translate([6.5,-2,0])    scale([1,1,7])    
        rotate([-90,0,0])    cylinder(d=13,h=6,$fn=pixel/5);
    }
}
module top(){
    translate([0,0,310])    difference(){
        scale([1,1,2.43])    sphere(15,$fn=pixel);
        scale([1,1,2.43])    sphere(14,$fn=pixel);
        translate([-30,-30,-50])    cube([60,60,40]);
        translate([-30,-30,0])    cube([60,60,40]);
        translate([0,0,-46])    cylinder(d=13,h=100,$fn=pixel);
    }
    translate([0,0,310])    difference(){
        scale([1,1,2.43])    sphere(13.5,$fn=pixel);
        scale([1,1,2.43])    sphere(13,$fn=pixel);
        translate([-30,-30,-50])    cube([60,60,35]);
        translate([-30,-30,-8])    cube([60,60,40]);
        translate([0,0,-46])    cylinder(d=13,h=100,$fn=pixel);
    }
    translate([0,0,310])    difference(){
        scale([1,1,4])    sphere(15,$fn=pixel);
        scale([1,1,4])    sphere(14,$fn=pixel);
        translate([-30,-30,-70])    cube([60,60,70]);
        translate([0,0,-46])    cylinder(d=13,h=50,$fn=pixel);
    }
    for(i=[0:4])    rotate([0,0,90*i])    hull(){
        translate([25,0,310])    cylinder(d=2,h=1,$fn=pixel/10);
        translate([15,-1,295])    cube([1,2,1]);
        translate([12,-1,340])    cube([1,2,1]);
    }
    translate([0,0,310])    intersection(){
        scale([1,1,4])    sphere(15,$fn=pixel);
        translate([-50,-1.5,40])    cube([100,3,5]);
    }
}
translate([0,0,10])    top();
middle();
translate([0,0,-50])    bottom();
pixel=20;