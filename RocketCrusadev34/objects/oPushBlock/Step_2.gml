// Actual collision checks + movement
var i;

// Vertical
for (i = 0; i < abs(v); ++i) {
    with (oPlayer) {
        if (place_meeting(x, y + 1, other.id)) {
            if (!PlaceMeetingException(x, y + sign(other.v), oParSolid, other.id))
                y += sign(other.v);
        }
        
        if (place_meeting(x, y - 1, other.id))
            y += sign(other.v);
    }

    if (!place_meeting(x, y + sign(v), oParSolid))
        y += sign(v);
    else {
        v = 0;
        break;
    }
}

// Push stacks of blocks
with (oPushBlock) {
    if (instance_place(x, y + 1, oPushBlock))
       h = (instance_place(x, y + 1, oPushBlock).h);
}

// Horizontal
for (i = 0; i < abs(h); ++i) {      // Move stacks 
    // UP slope
    if (place_meeting(x + sign(h), y, oParSolid) && !place_meeting(x + sign(h), y - 1, oParSolid))
        --y;
    
    // DOWN slope
    if (!place_meeting(x + sign(h), y, oParSolid) && !place_meeting(x + sign(h), y + 1, oParSolid) && place_meeting(x + sign(h), y + 2, oParSolid))
        ++y;       
        
    if (!place_meeting(x + sign(h), y, oParSolid))
        x += sign(h);
    else { 
        // Push other push blocks
        if (place_meeting(x + sign(h), y, oPushBlock)) {
            with (instance_place(x + sign(h), y, oPushBlock))
                if (instance_exists(oPlayer))
                    h = oPlayer.h
        } else
            h = 0;
        break;
    }
}

///////////////////////////////////////////////////////////////////////////////


