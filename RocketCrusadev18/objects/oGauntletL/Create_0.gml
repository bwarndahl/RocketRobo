/// @desc ?
enum GstatesL
{
	INACTIVE,
	ACTIVE
}

GstateL = GstatesL.INACTIVE

speed = 6;
maxSpeed = 10;
temp = 1;
delay = 60;

isActive = false;
// Shake screen when rocket is created.
with (oCamera) {
    alarm[0] = 2;
    screenShake = true;
}