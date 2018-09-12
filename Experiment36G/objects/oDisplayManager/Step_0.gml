///Zoom window
/*
if(keyboard_check_pressed(ord("Z")))
{
	/*
  zoom++;
  
  if(zoom > max_zoom)
    zoom = 1;
  
  window_set_size(ideal_width*zoom,ideal_height*zoom);
  surface_resize(application_surface,ideal_width*zoom,ideal_height*zoom);
  alarm[0] = 1;
  
  height_resize = ideal_height;
  if(height_resize = 550) height_resize = 850;
  else if(height_resize = 850) height_resize = 550;
  WindowResize(height_resize);
}
*/

if(keyboard_check_pressed(ord("1"))) //Add zoom
{
	
	zoom++;
 
	if(zoom > max_zoom) zoom = 1;
 
	window_set_size(ideal_width * zoom, ideal_height * zoom);
	surface_resize(application_surface, ideal_width * zoom, ideal_height * zoom);
	alarm[0] = 1;
	
	/*
	if(zoom = 1) zoom = 2;
	else if (zoom = 2) zoom = 1;
	
	window_set_size(ideal_width * zoom, ideal_height * zoom);
	
	surface_resize(application_surface, ideal_width * zoom, ideal_height * zoom);
	alarm[0] = 1;
	*/
}


if(keyboard_check_pressed(ord("2"))) //Enable fullscreen
{
	zoom = max_zoom;
 
	window_set_size(ideal_width * zoom, ideal_height * zoom);
	//surface_resize(application_surface, ideal_width * zoom, ideal_height * zoom);
	surface_resize(application_surface, ideal_width, ideal_height);
	alarm[0] = 1;

	window_set_fullscreen(true);
}

if(keyboard_check_pressed(ord("Z"))) //Disable fullscreen
{
	//zoom++;
 
	//if(zoom > max_zoom) zoom = 1;
 
	window_set_size(ideal_width * zoom, ideal_height * zoom);
	camera_set_view_size(camera, ideal_width * zoom, ideal_height * zoom);
	surface_resize(application_surface, ideal_width, ideal_height);
	alarm[0] = 1;
	window_set_fullscreen(false);
}



//Follow Player
view_x = oCamera.x - view_w/2;
view_y = oCamera.y - view_h/2;

view_x = clamp(view_x,0,room_width-view_w);
view_y = clamp(view_y,0,room_height-view_h);
