/// @desc Door States
if (image_index = 6) && (dstate != doorStates.UNLOCKED) dstate = doorStates.UNLOCKED;
if (dstate = doorStates.LOCKED)
{
	image_index = 0;
	image_speed = 0;
}


if (dstate = doorStates.UNLOCKING)
{
	image_speed = 1;
}

if (dstate = doorStates.UNLOCKED)
{
	//image_index = 6;
	image_speed = 0;
}

if(instance_exists(oKey))
{
	if (point_distance(x,y,oKey.x,oKey.y) < 0.1) //&& (oKey.keyState = keyStates.UNLOCK)
	{
		test = true;
		delay = false;
		alarm[0] = 10;
		dstate = doorStates.UNLOCKING //isLocked = false;
		
		// Particles
        var i;
        for (i = 0; i < 4; ++i)
			with (instance_create(oKey.x + random_range(-8, 8), oKey.y, oParticle))
				direction = random_range(0, 359);        

		oTransition.hasKey = false;
		instance_destroy(oKey);
	}
}