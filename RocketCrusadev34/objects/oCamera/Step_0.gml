/// @description Insert description here
/*
var scale = 2;

var w = window_get_width() / scale; 
var h = window_get_height() / scale;

display_set_gui_size(w, h);

var cam = view_get_camera(0);

view_set_wport(0, w); 
view_set_hport(0, h);

camera_set_view_size(cam, view_wport[0], view_hport[0]);

surface_resize(application_surface, w, h);
*/


if(instance_exists(follow))
{
	if(count == 0)
	{
		x = follow.x;
		y = follow.y;
		count+=1;
	}
	
	xTo = follow.x;
	yTo = follow.y;

	//Account for Mouse Angle & onGround
	if(follow == oPlayer)
	{
		xoffset = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y) / 50;
		yoffset = point_distance(oPlayer.x,oPlayer.y,mouse_x,mouse_y) / 100;
		angle = point_direction(oPlayer.x,oPlayer.y,mouse_x,mouse_y);

		//if(oPlayer.onGround) yoffset -= groundoffset;

		//if (0 < angle && angle < 90) || (270 <= angle && angle <= 360) xoffset = xoffset + 2;
		//if (90 <= angle && angle <= 270) xoffset = xoffset - 2;
		//if (20 <= angle && angle <= 160) yoffset = yoffset - 2;
		//if (200 <= angle && angle <= 340) yoffset = yoffset + 2;

		//if (oPlayer.h != 0) xoffset += facingoffset * oPlayer.facing
		
		//if (oPlayer.onGround)  groundoffset = Approach(groundoffset,8,2);
		//else groundoffset = Approach(groundoffset,0,2);
		
		yoffset -= lookingoffset;

		xMove = lengthdir_x(xoffset, angle);
		yMove = lengthdir_y(yoffset, angle);
		if (oPlayer.onGround) yMove += groundoffset;
		
		x += xMove;
		y -= yMove;
	}

	//Update Object Position
	x += (xTo - x) / 10;
	y += (yTo - y) / 10;

	//Clamp
	x = clamp(x,0+view_w_half+buff,room_width-view_w_half-buff); //-80  camera_get_view_width(view_camera[0])/2
	y = clamp(y,0+view_h_half+buff,room_height-view_h_half-buff); //-50

	//Screen Shake
	x += random_range(-shake_remain,shake_remain);
	y += random_range(-shake_remain,shake_remain);
	shake_remain = max(0,shake_remain - ((1/shake_length)*shake_magnitude));

	//Update Camera View
	camera_set_view_pos(cam,x - view_w_half,y - view_h_half);
	
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
	
}