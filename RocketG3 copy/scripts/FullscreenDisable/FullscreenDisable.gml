with(oDisplayManager)
{
	window_set_fullscreen(false);
	
	window_set_size(880, 550);
	surface_resize(application_surface, 880, 550);
	//camera_set_view_size(view_camera[0],880,550);
	display_set_gui_size(880, 550);
  
	alarm[0]=1;

	camera = camera_create();
	globalvar view_w,view_h; //view_x,view_y,
	//view_x = 0;
	//view_y = 0;
	view_w = 880;
	view_h = 550;
	
	//alarm[1] = room_speed/2;
	alarm[1] = room_speed;
	//alarm[1] = room_speed*2;
}