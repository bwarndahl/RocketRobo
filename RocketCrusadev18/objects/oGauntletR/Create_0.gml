/// @desc ?
enum Gstates
{
	INACTIVE,
	ROCKET,
	GRAB,
	RICOCHET,
	EXPLODE
}

isActive = false;
Gstate = Gstates.INACTIVE;



speed = 6;
maxSpeed = 10;
temp = 1;
canShoot = true;
delay = 60;
spd = 1;
xoffset = -6;
yoffset = 3;

h = 0;
v = 0;
// Shake screen when rocket is created.
with (oCamera) {
    alarm[0] = 2;
    screenShake = true;
}

var i;
for (i = 0; i < 4; ++i)
        with (instance_create(x + random_range(-8, 8), y, oParticle))
        direction = random_range(-45, 45);    