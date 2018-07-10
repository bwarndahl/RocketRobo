// Explode + destroy self
if (Gstate = Gstates.ACTIVE)
{
	instance_create(x,y,oExplosion);
	with (oPlayer) alarm[10] = 60;
	instance_destroy();
}