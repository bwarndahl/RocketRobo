/// @desc ?
isActive = false;
GstateL = Gstates.INACTIVE;



speed = 6;
maxSpeed = 10;
temp = 1;
canShoot = true;
delay = 60;
spd = 1;
xoffset = 20;
yoffset = 10;

grab = false;
grab_delay = 30;
count = 0;
chain_count = 0;
grab_count = 0;

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
		
flash = 5;
audio_play_sound(sfxGauntletL,5,false);