/// @desc Gravity
if (!place_meeting(x, y + 1, oParSolid))
    v += 0.5;

// MaxV    
if (v >= 12)
    v = 12;