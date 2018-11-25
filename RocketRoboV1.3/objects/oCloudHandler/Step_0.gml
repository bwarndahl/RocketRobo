/// @desc ?
if(instance_number(oCloud) <= 5)
{
	show_debug_message("Active");
	xx = room_width + 32;
	yy = random_range(0,room_height/2);
	instance_create_layer(xx,yy,"BG_Objects",oCloud);
}