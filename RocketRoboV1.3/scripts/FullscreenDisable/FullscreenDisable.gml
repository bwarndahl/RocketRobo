with(oDisplayManager)
{
	window_set_fullscreen(false);
	
	window_set_size(880, 550);
	surface_resize(application_surface, 880, 550);
  
	alarm[0]=1;

	camera = camera_create();

	view_w = 880;
	view_h = 550;
	
	display_set_gui_size(view_wport[0], view_hport[0]);
	
	alarm[1] = room_speed;
}

with(oTransition)
{
	screenWidth = view_wport[0];
	screenHeight = view_hport[0];
}