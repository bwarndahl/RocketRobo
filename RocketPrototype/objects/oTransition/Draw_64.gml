/// @desc Draw Circle

//Get camera coords.
var cx = camera_get_view_x(view_camera);
var cy = camera_get_view_y(view_camera);
///Make the adjustment to GUI.
var xx = (oPlayer.x-cx)*display_scalex;
var yy = (oPlayer.y-cy)*display_scaley;


//draw_circle(oPlayer.x, oPlayer.y, 10, true);


if(mode != TRANS_MODE.OFF)
{
	draw_circle_color(xx, yy, percent * (w * 1.5), $461D99, $461D99, false);
	// draw_circle(oPlayer.x - lengthdir_x(point_distance(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y),(point_direction(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y))), oPlayer.y - lengthdir_y(point_distance(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y),(point_direction(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y))), percent * (w * 1.5), false);
}
