/// @desc Poof
if(!grab)
{
	var i;
	for (i = 0; i < 4; ++i)
		with (instance_create(x, y, oParticle))
			direction = random_range(0, 360);
		
	instance_destroy();
}