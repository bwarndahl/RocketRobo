// Explode + destroy self
	if (isActive)
	{
		if(Gstate = Gstates.ROCKET) || (Gstate = Gstates.RICOCHET)
		{
			instance_create(x,y,oExplosion);
			with (oPlayer) alarm[10] = 60; ///Set Respawn
			instance_destroy();
		}
		
		if(Gstate = Gstates.GRAB)
		{
			// Particles
			var i;
			for (i = 0; i < 4; ++i)
				with (instance_create(x, y, oParticle))
					direction = random_range(0, 360);
			
			with(oPlayer) alarm[10] = 60; ///Set Respawn
			instance_destroy();
		}

	}