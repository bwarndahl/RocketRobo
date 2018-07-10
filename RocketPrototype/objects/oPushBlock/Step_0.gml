// Gravity
if (!place_meeting(x, y + 1, oParSolid))
    v += 0.5;

// MaxV    
if (v >= 12)
    v = 12;

// Friction 
if (OnGround())   
    h = Approach(h, 0, 0.66);
else
    h = Approach(h, 0, 0.1);

