/// @desc Draw Circle

//Get camera coords.
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
///Make the adjustment to GUI
if(CheckPlayer())
{
	var xx = (oPlayer.x-cx)//*display_scalex;
	var yy = (oPlayer.y-cy)//*display_scaley;
}
else
{
	var xx = w/2;
	var yy = h/2;
}


if(type = TRANS_TYPE.CIRCLE)
{
	if(mode != TRANS_MODE.OFF)
	{
		draw_circle_color(xx, yy, percent * (w * 1.5), $340910, $340910, false);
	}
}
