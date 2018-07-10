// Explode + destroy self
if (GstateL = GstatesL.ACTIVE)
{
	instance_create(x,y,oExplosion);
	with (oPlayer) alarm[11] = 60;
	instance_destroy();
}