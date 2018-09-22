/// @desc Draw Circle

//Get camera coords.
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

///Make the adjustment to GUI.
if(instance_exists(oPlayer))
{
	var xx = (oPlayer.x-cx)//*display_scalex;
	var yy = (oPlayer.y-cy)//*display_scaley;
}
else if(oGame.gameState == gameStates.PAUSE)
{
	var xx = (oGame.xPosition-cx);
	var yy = (oGame.yPosition-cy);
}
else
{
	var xx = (room_width/2)-cx;
	var yy = (room_height/2)-cy;
}



//draw_circle(oPlayer.x, oPlayer.y, 10, true);

if(type = TRANS_TYPE.CIRCLE)
{
	if(mode != TRANS_MODE.OFF)
	{
		draw_circle_color(xx, yy, percent * (w * 1.5), $340910, $340910, false);
		// draw_circle(oPlayer.x - lengthdir_x(point_distance(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y),(point_direction(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y))), oPlayer.y - lengthdir_y(point_distance(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y),(point_direction(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y))), percent * (w * 1.5), false);
	}
}
else if(type = TRANS_TYPE.TILE)
{
	
}

//in fullscreen begin script, have sections refreshing objects with gui size/window size variables