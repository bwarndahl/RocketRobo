/// @desc ?
if (isLocked) image_index = 1;
else image_index = 0;

if(instance_exists(oKey))
{
	if (point_distance(x,y,oKey.x,oKey.y) < 0.1) //&& (oKey.keyState = keyStates.UNLOCK)
	{
		test = true;
		delay = false;
		alarm[0] = 10;
		isLocked = false;
		
		// Particles
        var i;
        for (i = 0; i < 4; ++i)
			with (instance_create(oKey.x + random_range(-8, 8), oKey.y, oParticle))
				direction = random_range(0, 359);        

		oTransition.hasKey = false;
		instance_destroy(oKey);
	}
}