use <cutterFromSTL.SCAD>

$fn=60;
//object1(1);

union() {
difference() {
    union() {
        //union() import("cardboard_cutter-lesssharp.stl");
        object1(1);   
        hull() {
            translate([30/2,0,0]) cylinder(h=16,d=30);
            translate([30/2+83-30,0,0]) cylinder(h=16,d=30);
        }
    }
    
    start=21.5/2+7;
    end=30/2+83-30-2;
    dist=end-start;
    
    translate([start,0,0]) cylinder(h=16,d=20);
    translate([start+dist/3,0,0]) cylinder(h=16,d=20);
    translate([start+(dist/3)*2,0,0]) cylinder(h=16,d=20);
    translate([start+(dist/3)*3,0,0]) cylinder(h=16,d=20);

    hull() {
        translate([start,0,0]) cylinder(h=16,d=16.5);
        translate([end,0,0]) cylinder(h=16,d=16.5);
    }
    doublechamfer();
    translate([80,0,3])rotate([0,90,0])cylinder(h=20,d=6);
}

translate([80,0,3])rotate([0,90,0])cylinder(h=12,d=6);
translate([92,0,3])rotate([0,90,0])cylinder(h=6,d1=6,d2=1);
}

//object1();
//doublechamfer();


module chamfer() {
    translate([-100,6,4.2]) rotate ([-20,0,0]) cube(100);
}

module doublechamfer() {
    chamfer();
    translate([0,0,0])mirror([0,1,0]) chamfer();
}
