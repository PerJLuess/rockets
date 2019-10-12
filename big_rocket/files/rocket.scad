module fins(){
    hull(){
        difference(){
            translate([70,0,-30])    rotate([0,-18 ,0])    cylinder(d=6,h=150,$fn=pixel/10);
            translate([0,-10,-40])     cube([100,20,11]);
            cylinder(d=69,h=200,$fn=pixel);
        }
        translate([35,-2,0])    cube([1,4,1]);
    }
}
module fins_two(){
    hull(){
        difference(){
            translate([70,0,0])    rotate([0,-35,0])    cylinder(d=3,h=150,$fn=pixel/10);
            translate([0,-10,-40])     cube([100,20,11]);
            cylinder(d=69,h=200,$fn=pixel);
        }
        translate([35,-2,0])    cube([1,4,1]);
    }
}
module one(){
    difference(){
        cylinder(d=70,h=150,$fn=pixel);
        translate([0,0,-1])    cylinder(d=65.4,h=200,$fn=pixel);
        for(i=[0:3])    rotate([0,0,45+90*i])    
            translate([0,0,30])    rotate([90,0,0])    cylinder(d=3,h=50,$fn=pixel/5);
    }
    translate([0,0,110])    difference(){
        cylinder(d=69,h=2);
        for(i=[0:4])    rotate([0,0,75*i])    
            translate([30,0,-1])    cylinder(d=10,h=50,$fn=pixel/5);
    }
    for(i=[0:3])    rotate([0,0,45+90*i])    difference(){
            hull(){
                translate([33,-6,145])    cube([1,12,5]);
                translate([30,0,145])    cylinder(d=10,h=5,$fn=pixel/10);
            }
            translate([30,0,144])    cylinder(d=3,h=10,$fn=15);
        }
    for(i=[0:2])    rotate([0,0,120*i])    fins();
}
module fix(){
    difference(){
        intersection(){
            translate([-33,0,0])    rotate([90,0,0])    cylinder(d=14,h=40,$fn=pixel/5);
            translate([0,0,-20])    cylinder(d=70,h=40,$fn=pixel);
        }
        translate([-33,-2,0])    rotate([90,0,0])    cylinder(d=10,h=40,$fn=pixel/5);
        translate([-32,1,0])    rotate([90,0,0])    cylinder(d=3,h=20,$fn=pixel/10);
    }
}
module two(){
    difference(){
        cylinder(d=70,h=150,$fn=pixel);
        translate([0,0,-1])    cylinder(d=67,h=152,$fn=pixel);
        translate([-40,0,5])    cube([80,40,140]);
        translate([-33,40,30])    rotate([90,0,0])    cylinder(d=10,h=80,$fn=pixel/5);
        translate([-33,40,120])    rotate([90,0,0])    cylinder(d=10,h=80,$fn=pixel/5);
        translate([33,40,30])    rotate([90,0,0])    cylinder(d=10,h=80,$fn=pixel/5);
        translate([33,40,120])    rotate([90,0,0])    cylinder(d=10,h=80,$fn=pixel/5);
    }
    difference(){
        cylinder(d=69,h=3);
        for(i=[0:3])    rotate([0,0,45+90*i])    
            translate([30,0,-1])    cylinder(d=3,h=5,$fn=pixel/15);
        translate([0,-30,-1])    cylinder(d=18,h=5,$fn=pixel/10);
    }
    translate([0,0,30])    fix();
    translate([0,0,120])    fix();
    mirror([1,0,0])    translate([0,0,30])    fix();
    mirror([1,0,0])    translate([0,0,120])    fix();
    translate([0,0,147])    difference(){
        cylinder(d=69,h=3);
        for(i=[0:3])    rotate([0,0,45+90*i])    
            translate([30,0,-1])    cylinder(d=3,h=5,$fn=pixel/15);
        translate([0,-30,-1])    cylinder(d=18,h=5,$fn=pixel/10);
    }
}
module three(){
    difference(){
        cylinder(d=70,h=140,$fn=pixel);
        translate([0,0,-1])    cylinder(d=67,h=152,$fn=pixel);
        translate([-40,-40,-1])    cube([80,40,150]);
        translate([-33,40,25])    rotate([90,0,0])    cylinder(d=10,h=80,$fn=pixel/5);
        translate([-33,40,115])    rotate([90,0,0])    cylinder(d=10,h=80,$fn=pixel/5);
        translate([33,40,25])    rotate([90,0,0])    cylinder(d=10,h=80,$fn=pixel/5);
        translate([33,40,115])    rotate([90,0,0])    cylinder(d=10,h=80,$fn=pixel/5);
    }
    mirror([0,1,0]){
        translate([0,0,25])    fix();
        translate([0,0,115])    fix();
        mirror([1,0,0])    translate([0,0,25])    fix();
        mirror([1,0,0])    translate([0,0,115])    fix();
    }
}
module four(){
    difference(){
        cylinder(d=70,h=70,$fn=pixel);
        translate([0,0,3])    difference(){
            cylinder(d=66,h=100,$fn=pixel);
            translate([-40,-5,0])    cube([80,10,120]);
        }
        translate([-25,-10,3])    cube([50,20,120]);
        translate([-40,-20,55])    cube([80,15,120]);
        translate([-40,5,55])    cube([80,15,120]);
        for(i=[0:3])    rotate([0,0,45+90*i])    
            translate([30,0,-1])    cylinder(d=3,h=5,$fn=pixel/15);
        translate([0,-30,-1])    cylinder(d=18,h=5,$fn=pixel/10);
        translate([0,0,24])    rotate([-90,0,30])    cylinder(d=41,h=40,$fn=pixel/4);
        translate([-30,-10,65])    rotate([-90,0,0])    cylinder(d=3,h=20,$fn=pixel/10);
        translate([30,-10,65])    rotate([-90,0,0])    cylinder(d=3,h=20,$fn=pixel/10);
    }
    for(i=[0:2])    rotate([0,0,60+120*i])    fins_two();
}
module five(){
    difference(){
        scale([1,1,3])    sphere(35,$fn=pixel);
        scale([0.942857143,0.942857143,2.942857143])    sphere(35,$fn=pixel);
        translate([-40,-40,-200])    cube([80,80,200]);
        translate([0,-40,-1])    cube([80,80,200]);
        translate([-40,-6,-1])    cube([20,12,3]);
    }
    difference(){
        hull(){
            translate([-31,-6.5,0])    cube([1,1,1]);
            translate([-31,-6.5,30])    cube([1,1,1]);
            translate([-31,-10.5,0])    cube([1,1,1]);
            translate([-31,-10.5,30])    cube([1,1,1]);
            translate([-30,-10.5,-5])    rotate([-90,0,0])    cylinder(d=8,h=5,$fn=pixel/10);
        }
        translate([-30,-11,-5])    rotate([-90,0,0])    cylinder(d=3,h=40,$fn=pixel/15);
    }
    mirror([0,1,0])    difference(){
        hull(){
            translate([-31,-6.5,0])    cube([1,1,1]);
            translate([-31,-6.5,30])    cube([1,1,1]);
            translate([-31,-10.5,0])    cube([1,1,1]);
            translate([-31,-10.5,30])    cube([1,1,1]);
            translate([-30,-10.5,-5])    rotate([-90,0,0])    cylinder(d=8,h=5,$fn=pixel/10);
        }
        translate([-30,-11,-5])    rotate([-90,0,0])    cylinder(d=3,h=40,$fn=pixel/15);
    }
}
module connector(){
    difference(){
        cylinder(d1=70,d2=75,h=5,$fn=pixel);
        for(i=[0:3])    rotate([0,0,45+90*i])    
            translate([30,0,-1])    cylinder(d=3,h=7,$fn=pixel/15);
        translate([0,-30,-1])    cylinder(d=18,h=7,$fn=pixel/10);
        for(i=[0:3])    rotate([0,0,45+90*i])    hull(){
            translate([-20,20,-1])    cylinder(d=1,h=45);
            translate([-5,40,-1])    cylinder(d=1,h=45);
            translate([-40,5,-1])    cylinder(d=1,h=45);
            translate([-40,40,-1])    cylinder(d=1,h=45);
        }
    }
    translate([0,0,5])    difference(){
        cylinder(d1=75,d2=80,h=30,$fn=pixel);
        translate([0,0,-1])    cylinder(d=70,h=40,$fn=pixel);
        for(i=[0:3])    rotate([0,0,45+90*i])    hull(){
            translate([-20,20,-1])    cylinder(d=1,h=45);
            translate([-5,40,-1])    cylinder(d=1,h=45);
            translate([-40,5,-1])    cylinder(d=1,h=45);
            translate([-40,40,-1])    cylinder(d=1,h=45);
        }
        for(i=[0:3])    translate([0,0,20])    rotate([90,0,45+90*i])
            cylinder(d=3,h=40,$fn=pixel/15);
        for(i=[0:3])    translate([0,0,20])    rotate([0,0,45+90*i])
            translate([37,0,0])    rotate([0,90,0])    cylinder(d=7,h=40,$fn=pixel/15);
    }
    translate([0,0,35])    difference(){
        cylinder(d1=80,d2=72,h=5,$fn=pixel);
        translate([0,0,-1])    cylinder(d=70,h=40,$fn=pixel);
        for(i=[0:3])    rotate([0,0,45+90*i])    hull(){
            translate([-20,20,-1])    cylinder(d=1,h=45);
            translate([-5,40,-1])    cylinder(d=1,h=45);
            translate([-40,5,-1])    cylinder(d=1,h=45);
            translate([-40,40,-1])    cylinder(d=1,h=45);
        }
    }
}
translate([0,0,530])    connector();
translate([0,0,400])    five();
translate([0,0,320])    four();
translate([0,50,165])    three();
translate([0,0,160])    two();
one();
pixel=100;