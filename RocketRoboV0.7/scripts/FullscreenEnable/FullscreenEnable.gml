with(oDisplayManager)
{
	window_set_fullscreen(true);
	
	ideal_width = 0;
	ideal_height = argument[0];
	
	display_width = display_get_width();
	display_height = display_get_height();

	aspect_ratio = display_width/display_height;
	ideal_width = round(ideal_height*aspect_ratio);

	//Perfect Pixel Scaling
	if(display_width mod ideal_width != 0)
	{
	  var d = round(display_width/ideal_width);
	  ideal_width = display_width/d;
	}
	if(display_height mod ideal_height != 0)
	{
	  var d = round(display_height/ideal_height);
	  ideal_height = display_height/d;
	}

	//Check for odd numbers
	if(ideal_width & 1)
	  ideal_width++;
	if(ideal_height & 1)
	  ideal_height++;

	window_set_size(ideal_width*zoom,ideal_height*zoom);
	surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
	
  
	alarm[0] = 1;

	camera = camera_create();
	
	view_x = 0;
	view_y = 0;
	view_w = ideal_width;
	view_h = ideal_height;

	display_set_gui_size(display_get_width(), display_get_height());
}

with(oTransition)
{
	screenWidth = view_wport[0];
	screenHeight = view_hport[0];
}