/// @desc ?
enum Gstates
{
	INACTIVE,
	ROCKET,
	GRAB,
	RICOCHET,
	EXPLODE,
	RUN
}

// Shake screen when rocket is created.
with (oCamera) {
    alarm[0] = 2;
    screenShake = true;
}

CreateParticles(4,x+random_range(-4,4),y+random_range(-4,4),0,360)

audio_play_sound(startupSFX,5,false);

alarm_respawn = 0;
chain_layer = 0;