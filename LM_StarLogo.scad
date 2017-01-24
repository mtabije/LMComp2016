module StarLogo(centerLoc,width,depth,rot)
// Create the Lockheed Martin Star Logo
// This version may have problems printing at small sizes, as points of the star 
// are actually points.
{
translate(centerLoc)
rotate(rot)
linear_extrude(height = depth, center = true, convexity = 10, twist = 0)scale([width/874, width/874, 0])
translate([-437,-183,0])   // Now centered at (0,0)
translate([-121, -32, 0])  // Bounding box now at (0,0),(874,366)
polygon(points = [
[   121,   255 ],
[   743,   258 ],
[   875,   398 ],
[   839,   258 ],
[   995,   257 ],
[   814,   166 ],
[   776,    32 ],
[   800,   158 ],
[   552,    39 ],
[   805,   177 ],
[   818,   240 ],
[   744,   241 ],
[   652,   157 ],
[   727,   241 ],
[   761,   257 ],
[   835,   326 ],
[   822,   257 ],
[   835,   240 ],
[   914,   238 ],
[   821,   187 ],
],  
paths = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13],
[14,15,16],[17,18,19]]);
}

module StarLogo2(centerLoc,width,depth,rot)
// Create the Lockheed Martin Star Logo
// Aspect ratio is 2.4 to 1
// Thin points have been thickened for printability at small sizes.
// Should print OK for width >= 30

{
translate(centerLoc)
rotate(rot)
linear_extrude(height = depth, center = true, convexity = 10, twist = 0)scale([width/874, width/874, 0])
translate([-437,-183,0])   // Now centered at (0,0)
translate([-121, -32, 0])  // Bounding box now at (0,0),(874,366)
polygon(points = [
[   121,   255 ],  // 0 
[   743,   258 ],  // 1
[   875,   398 ],  // 2
[   839,   258 ],  // 3
[   995,   257 ],  // 4
[   814,   166 ],  // 5
[   776,    32 ],  // 6
[   765.4,   32 ],  // 7
[   800,   158 ],  // 8
[   552,    39 ],  // 9
[   546,    45 ],  // 10
[   805,   177 ],  // 11
[   818,   240 ],  // 12
[   744,   241 ],  // 13
[   652,   157 ],  // 14
[   646,   163],   // 15
[   727,   241 ],  // 16
[   121,   246.4], // 17 (366*NozzleWidth/17) for NW = 0.4
[   761,   257 ],  // 18
[   835,   326 ],  // 19
[   822,   257 ],  // 20
[   835,   240 ],  // 21 
[   914,   238 ],  // 22
[   821,   187 ],  // 23
],  
paths = [[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16, 17],
[18,19,20], [21,22,23]]);
}
