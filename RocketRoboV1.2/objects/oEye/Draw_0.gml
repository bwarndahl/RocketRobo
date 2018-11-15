/// @description Hit Flash, After Image
#region Afterimage
var frame_delay = 6;
afterimage_frame_count++;
if(afterimage_frame_count >= frame_delay)
{
	afterimage_count++;
	if(afterimage_count >= 3) afterimage_count = 0;
	if(speed > 0)
		with(instance_create_layer(x,y,"lEyeTrail",oEyeAfterimageY))
			image_index = other.afterimage_count;
			
	afterimage_frame_count = 0;
}
#endregion


draw_self();

if(flash > 0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}