/// @desc Animation
if(speed > 0)
{
	image_speed = 1.2;
	if(image_index >= 2) image_index = 0;
}
else
{
	image_speed = 0;
	image_index = 0;
}

if(hp <= 0)
{
	isIntangible = true;
}
else isIntangible = false;