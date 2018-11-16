// Explode + destroy self
if (isActive)
{
	if(Gstate = Gstates.ROCKET) || (Gstate = Gstates.RICOCHET)
	{
		instance_create(x,y,oExplosion);
		with (oPlayer) alarm[other.alarm_respawn] = 60; ///Set Respawn
		instance_destroy();
	}
	
	if(Gstate = Gstates.GRAB)
	{
		CreateParticles(4,x,y,0,360);
		instance_create_layer(x,y,"lEffects",oPoof);
		
		with(oPlayer) alarm[other.alarm_respawn] = 60; ///Set Respawn
		instance_destroy();
	}
}