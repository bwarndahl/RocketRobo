/// @desc ?
enum GstatesL
{
	INACTIVE,
	ACTIVE
}

GstateL = GstatesL.INACTIVE

speed = 12;
maxSpeed = 24;
temp = 1;
delay = 30;

isActive = false;
// Shake screen when rocket is created.
with (oCamera) {
    alarm[0] = 2;
    screenShake = true;
}