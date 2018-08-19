/// @desc Collision Checks & Movement
var i;

// Reset Body Part Coords
// oPlayerHead.x = x
// oPlayerHead.y = y - 2

if(isSolid)
{
	// Vertical
	for (i = 0; i < abs(v); ++i) {
	    if (!place_meeting(x, y + sign(v), oParSolid))
	        y += sign(v);
	    else {
	        v = 0;
	        break;
	    }
	}

	// Horizontal
	for (i = 0; i < abs(h); ++i) {
	    // UP slope
	    if (place_meeting(x + sign(h), y, oParSolid) && !place_meeting(x + sign(h), y - 1, oParSolid))
	        --y;
    
	    // DOWN slope
	    if (!place_meeting(x + sign(h), y, oParSolid) && !place_meeting(x + sign(h), y + 1, oParSolid) && place_meeting(x + sign(h), y + 2, oParSolid))
	        ++y;      
        
	    if (!place_meeting(x + sign(h), y, oParSolid))
	        x += sign(h); 
	    else {
	        // Push block
	        if (place_meeting(x + sign(h), y, oPushBlock)) {
	            with (instance_place(x + sign(h), y, oPushBlock))
	                h = other.h
	        } else
	            h = 0;
	        break;
	    }
	}
}

//if (place_meeting(x, y, oGround)) oCamera.groundoffset = Approach(groundoffset,32,2);

//if(abs(v) > maxV) v = maxV * sign(v); //* grav;
//if(abs(h) > maxH) h = maxH * sign(h); //* grav;
v = clamp(v,-maxV,maxV) //* grav;
h = clamp(h,-maxH,maxH) //* grav;

///////////////////////////////////////////////////////////////////////////////

// Standing
if (abs(v) < jumpHeight * 0.5)
if (h == 0) {
    xdrift = -sign(facing) * 5;
    ydrift = 0;
    if (v != 0)
        xdrift = -sign(facing) * 2;    
    xscatter = 0;
    yscatter = 2;
}