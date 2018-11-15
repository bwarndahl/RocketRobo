/// @desc ?
var delay, fade_speed;
delay = 8;
fade_speed = 0.2;

frame_count++;
if(frame_count >= delay)
{
	count -= fade_speed;
	image_alpha = count;
}
if(count = 0) instance_destroy();