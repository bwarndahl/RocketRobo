/// @desc ?
if(!audio_is_playing(sfxPoof)) audio_play_sound(sfxPoof,2,false);

var i;
for(i = 0; i < 4; i += 1)
{
	var xx, yy, obj, offset;
	offset = 24;
	xx = x + random_range(-offset,offset);
	yy = y + random_range(-offset,offset);
	
	if(irandom_range(0,1)) obj = oPoofM;
	else obj = oPoofS;
	
	with(instance_create_layer(xx,yy,"lEffects",obj))
	{
		direction = point_direction(other.x,other.y,x,y);
		speed = random_range(1,3);
		image_speed = random_range(1,3);
	}
}