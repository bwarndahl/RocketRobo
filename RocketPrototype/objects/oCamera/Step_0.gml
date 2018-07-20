/// @description Insert description here
var scale = 2;

var w = window_get_width() / scale; 
var h = window_get_height() / scale;

display_set_gui_size(w, h);

var cam = view_get_camera(0);

view_set_wport(0, w); 
view_set_hport(0, h);

camera_set_view_size(cam, view_wport[0], view_hport[0]);

if(instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;

	//Account for Mouse Angle & onGround
	if(follow == oPlayer)
	{
		xoffset = 0;
		yoffset = 0;
		angle = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);

		if (0 < angle && angle < 90) || (270 <= angle && angle <= 360) xoffset = xoffset + 2;
		if (90 <= angle && angle <= 270) xoffset = xoffset - 2;
		if (20 <= angle && angle <= 160) yoffset = yoffset - 2;
		if (200 <= angle && angle <= 340) yoffset = yoffset + 2;

		if (oPlayer.h != 0) xoffset += facingoffset * oPlayer.facing

		if (oPlayer.onGround) yoffset -= groundoffset;

		x += xoffset
		y += yoffset
	}

	//Update Object Position
	x += (xTo - x) / 10;
	y += (yTo - y) / 10;

	x = clamp(x,0+view_wview[0]/2,room_width-view_wview[0]/2-80);
	y = clamp(y,0,room_height-view_hview[0]/2-50);

	//Screen Shake
	x += random_range(-shake_remain,shake_remain);
	y += random_range(-shake_remain,shake_remain);
	shake_remain = max(0,shake_remain - ((1/shake_length)*shake_magnitude));

	//Update Camera View
	camera_set_view_pos(cam,x - view_w_half,y - view_h_half);

}
surface_resize(application_surface, w, h);