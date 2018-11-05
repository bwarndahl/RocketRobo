var temp;

// Check if you were onGround previous frame
temp = onGround;

onGround = OnGround(oParSolid);
onFloor = OnGround(oFloor);

// Squash sprite during jump landing
if (!temp && onGround) {
    if (v >= 0) {    
		/*
        yscale = 0.66;
        xscale = 1.33;  
		*/
    }
}

// Reset Body Part Coords
// oPlayerHead.x = x
// oPlayerHead.y = y - 2

// Update relative collision
cLeft  = place_meeting(x - 1, y, oBlock); 
cRight = place_meeting(x + 1, y, oBlock); 
cAbove = place_meeting(x, y - 16, oParSolid);

