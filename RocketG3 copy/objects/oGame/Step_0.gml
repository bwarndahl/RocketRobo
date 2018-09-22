/// @description Time

if(room != rMenu)
{
	seconds += 1/room_speed;	
}

if(instance_exists(oPlayer))
{
	xPosition = oPlayer.x;
	yPosition = oPlayer.y;
}

//Prevents Dock from Appearing
if(window_get_height()-2 <= window_mouse_get_y())
{
	window_mouse_set(window_mouse_get_x(),window_get_height()-3);	
}
	
if(window_get_width()-2 <= window_mouse_get_x())
{
	window_mouse_set(window_get_width()-3,window_mouse_get_y());
}
	
if(0+2 >= window_mouse_get_x())
{
	window_mouse_set(3,window_mouse_get_y());	
}