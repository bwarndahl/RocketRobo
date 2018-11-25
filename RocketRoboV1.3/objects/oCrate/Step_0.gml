/// @desc Gravity & Collision

// Gravity
if (!place_meeting(x, y + 2, oParSolid)) v += 0.5;
else v = 0;

if (v >= max_v) v = max_v;
	
y += v;


// Collision
if(place_meeting(x,y,oExplosion))
{
	instance_create_layer(x,y,"lEffects",oPoof);
	CreateParticles(6,x,y,0,360);
	CreateParticlesCrate(2,x,y,0,360);

	instance_destroy();
}

/*
if(place_meeting(x,y,oParGauntlet))
{
	if(other.isActive)
	{
		instance_create_layer(x,y,"lEffects",oPoof);
		CreateParticles(6,x,y,0,360);
		CreateParticlesCrate(2,x,y,0,360);

		instance_destroy();
	}
}
*/