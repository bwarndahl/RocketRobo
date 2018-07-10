/// @desc ?
enum Gstates
{
	INACTIVE,
	ACTIVE
}

Gstate = Gstates.INACTIVE;

speed = 12;
maxSpeed = 24;
temp = 1;
canShoot = true;
delay = 30;

// Shake screen when rocket is created.
with (oCamera) {
    alarm[0] = 2;
    screenShake = true;
}

var i;
for (i = 0; i < 4; ++i)
        with (instance_create(x + random_range(-8, 8), y, oParticle))
        direction = random_range(-45, 45);    