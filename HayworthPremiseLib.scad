// Examples

HayworthPremiseTop(4);

translate([0,-50,0])
HayworthPremiseWallInterface(3,30,3,7);

// This module makes a part that will fit on the top of a Hayworth 
// Premise cube partition.  Combine it with other designs to make
// items that hang off the top of the cube.
// Inputs: thickness is the height to which the 2D profile is extruded
// 
// Design by Keith Rogers

module  HayworthPremiseTop(thickness = 4)
{
    difference()
    {
        translate([-40,0,0])
        cube([80,12,thickness]);
    
    
    linear_extrude(thickness)
    {
        translate([38.3,0,0])mirror([1,0,0])
        polygon([[0,5.7],[0.5,6.1],[1,6.2],[2,6.6],[3,6.9],[4,7.1],[5,7.25],[10,8],[15,8.5],[20,9],[25,9.4],[30,9.7],[35,9.9],[38.3,10],[38.3,0],[0,0]],[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
        translate([-38.3,0,0])
            polygon([[0,5.7],[0.5,6.1],[1,6.2],[2,6.6],[3,6.9],[4,7.1],[5,7.25],[10,8],[15,8.5],[20,9],[25,9.4],[30,9.7],[35,9.9],[38.3,10],[38.3,0],[0,0]],[[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]]);
    }
    }
    translate([-40,-2,0])
    cube([7,2,thickness]);
    translate([33,-2,0])
    cube([7,2,thickness]);
}

// This module makes a part that will fit in the latticework between
// two Hayworth Premise cube partitions.  Combine it with other
// designs to make items that hang off the wall of the cube.
// Inputs: thickness relates to the space between partitions
//         hookOffset determines how far out from the wall the hook
//                    will be placed.
//         hookThickness is the width of the hook in the 
//                    direction coming out of the wall; set to 0 
//                    if no hook is desired.
//         hookWidth is the side-to-side dimension of the hook.
// Loosely derived from an interface piece provided by Hayworth.
// Design by Scott Gorin and Keith Rogers.

module HayworthPremiseWallInterface(thickness=3,hookOffset=30,hookThickness=3,hookWidth=10)

{
//Wall Connector

thickness = 3;
r = 2;
$fn=100;

union(){
    
linear_extrude(height=thickness)
offset(r=1){ 
    offset(r=-2){ 
        offset(r=1){
     polygon(points=[[-62,0],[-32,0],[-32,2.5],[-38,2.5],[-36,8.5],[-29,8.5],[-26.5,2.5],[-26.5,0],[-6.5,0],[-6.5,2.5],[-12,2.5],[-12,5],[-8,8.5],[6,8.5],[12,5],[12,2.5],[0,2.5],[0,-10],[-15,-10],[-15,-20],[-38,-20],[-38,-10],[-62,-10]]);
}}}

// offset cube
translate([-38,-hookOffset+r,0])cube([23,hookOffset-3,thickness]);
//upright bit
translate([-38,-hookOffset-hookThickness+r,0]) cube([38,hookThickness,hookWidth]);
}
}