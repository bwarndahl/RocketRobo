/// @desc ?
if(oldkeyState != keyState) && (keyState != keyStates.UNLOCK)
{
	// Particles
    var i;
	for (i = 0; i < 4; ++i)
		with (instance_create(oKey.x + random_range(-8, 8), oKey.y, oParticle))
			direction = random_range(0, 359); 
}