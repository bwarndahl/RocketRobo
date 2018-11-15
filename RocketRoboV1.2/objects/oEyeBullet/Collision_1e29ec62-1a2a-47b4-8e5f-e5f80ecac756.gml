/// @desc Collision
if(other.isActive)
{
	show_debug_message(";(");
	instance_create_layer(x,y,"lEffects",oPoof);
	CreateParticles(6,x,y,0,360);
	instance_destroy();
}
else
{
}