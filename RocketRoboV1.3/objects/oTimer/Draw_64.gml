/// @desc ?
if(tState = timerStates.ON)
{
	draw_set_font(FONT2);
	draw_set_halign(fa_right);

	var display_minutes, display_seconds, xoffset, yoffset;
	display_minutes = minutes; //round(minutes);
	display_seconds = seconds; //round(seconds);
	
	xoffset = 96;
	yoffset = 64;
	
	if(minutes < 10 && seconds < 10)		draw_text(display_get_gui_width() - xoffset,yoffset,"0" + string(display_minutes) +  ":0" + string(display_seconds));
	else if(minutes < 10 && seconds >= 10)	draw_text(display_get_gui_width() - xoffset,yoffset,"0" + string(display_minutes) +  ":" + string(display_seconds));
	else if(minutes >= 10 && seconds >= 10) draw_text(display_get_gui_width() - xoffset,yoffset,string(display_minutes) +  ":" + string(display_seconds));
}