if(keyboard_check_released(ord("P")) && oTransition.mode == TRANSITION.NONE)
{
	global.constant = 0;
	var width = surface_get_width(application_surface);
	var height = surface_get_height(application_surface);

	global.PauseScreenShot = sprite_create_from_surface(application_surface,0,0,width,height,false,false,0,0);
	room_persistent = true;

	global.RoomBeforePause = room;
	global.xCam = camera_get_view_x(view_camera[0]);
	global.yCam = camera_get_view_y(view_camera[0]);
	room_goto(rPause);
}
