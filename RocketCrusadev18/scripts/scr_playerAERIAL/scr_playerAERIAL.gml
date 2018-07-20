scr_getInputs()

tempAccel = airAccel;
tempFric  = airFric;

state = JUMP;

if ((cLeft || cRight) && v >= 0) {
// Wall slide
	v = Approach(v, maxV, gravSlide);
} else {
        
// Fall normally
if (v < 0) v = Approach(v, maxV, gravRise);
else v = Approach(v, maxV, gravFall);
}