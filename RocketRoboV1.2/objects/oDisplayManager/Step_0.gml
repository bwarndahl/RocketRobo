///Zoom window
/*
if(keyboard_check_pressed(ord("Z"))) //&& (!window_get_fullscreen()))
{
	if(!window_get_fullscreen())
	{
		zoom++;
  
		if(zoom > max_zoom) zoom = 1;
  
		window_set_size(880*zoom,550*zoom);
		surface_resize(application_surface,880*zoom,550*zoom);
		alarm[0] = 1;
	}
	else if (window_get_fullscreen())
	{
		zoom++;
  
		if(zoom > max_zoom) zoom = 1;
  
		window_set_size(ideal_width*zoom,ideal_height*zoom);
		surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
	}
}
*/

//if(window_get_fullscreen()) zoom = 1;

//Follow Camera
view_x = oCamera.x - view_w/2;
view_y = oCamera.y - view_h/2;

view_x = clamp(view_x,0,room_width-view_w);
view_y = clamp(view_y,0,room_height-view_h);