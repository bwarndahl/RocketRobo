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
		CreateParticles(4,x,y,0,360);
		
		with(oPlayer) alarm[10] = 60; ///Set Respawn
		instance_destroy();
	}
}