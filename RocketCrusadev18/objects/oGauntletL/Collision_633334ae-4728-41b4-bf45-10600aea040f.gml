// Explode + destroy self
if (isActive)
{
	instance_create(x,y,oExplosion);
	with (oPlayer) alarm[11] = 60;
	instance_destroy();
}