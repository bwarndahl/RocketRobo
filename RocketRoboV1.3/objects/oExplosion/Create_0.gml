/// @description Variables
//image_angle = random(360);
image_speed = 0.5;
r = 50;

kbDistance = 0;
kbDirection = 0;
kbx = 0;
kby = 0;
kbmagnitude = 2 //Adjusts knockback strength.
alarm[0] = 6; //Adjusts how many frames the hitbox is active.



with (instance_create(x + random_range(-8, 8), y, oParticle))
	direction = random_range(0, 360);
	
with (instance_create(x + random_range(-8, 8), y, oParticle))
	direction = random_range(0, 360);
	
with (instance_create(x + random_range(-8, 8), y, oParticle))
	direction = random_range(0, 360);


audio_play_sound(sfxExplosion,10,false);
ScreenShake(global.eMagnitude,global.eLength);