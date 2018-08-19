//Max Diagonal Radius
diag = max(point_distance(global.xPos,global.yPos,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])),
			point_distance(global.xPos,global.yPos,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0])),
			point_distance(global.xPos,global.yPos,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])),
			point_distance(global.xPos,global.yPos,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])));
	
if(mode == TRANSITION.GROW)
{
	if(diag+sizeFix > grow)
	{
		grow+=rate;
		shrink = grow;
		draw_circle_color(global.xPos,global.yPos,grow, $461D99, $461D99, false);	
	}
	else
	{
		shrink = grow+sizeFix2;
		grow = 0;
		mode = TRANSITION.SHRINK;
		room_restart();
		instance_activate_all();
		global.pause = false;
	}
}
	
if(mode == TRANSITION.SHRINK)
{
	if(shrink > 0)
	{
		shrink-=rate2;
		if(instance_exists(oPlayer))
		{
			draw_circle_color(oPlayer.x,oPlayer.y,shrink, $461D99, $461D99, false);
		}
		else
		{
			draw_circle_color(oGame.defaultx,oGame.defaulty,shrink, $461D99, $461D99, false);
		}
	}
	else
	{
		shrink = 0;
		mode = TRANSITION.NONE;
	}
}
