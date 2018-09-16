/// @desc ?
with(oDisplayManager)
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