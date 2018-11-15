/// @desc Increment count
count++
if(count = life)
{
	CreateParticles(6,x,y,0,360);
	instance_destroy();
}

if(hp <= 0)
{
	instance_create_layer(x,y,"lEffects",oPoof);
	CreateParticles(6,x,y,0,360);
	instance_destroy();
}