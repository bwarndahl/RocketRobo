/// @desc ?
if(tState = timerStates.COUNTDOWN)
{
	var xx, yy;
	xx = display_get_gui_width()/2;
	yy = display_get_gui_height()/2;
	
	if(frame < 3) draw_sprite_ext(sCountdown,frame,xx,yy,scale,scale,image_angle,image_blend,1);
	else
	{
		temp_scale += 0.1;
		draw_sprite_ext(sCountdown,frame,xx,yy,temp_scale,temp_scale,image_angle,image_blend,1);
	}
	
	var decay_rate = 0.3;
	scale -= decay_rate;
	
	if(scale <= 12)
	{
		frame += 1;
		scale = init_scale;
		
		if(frame >= 4) tState = timerStates.ON;
	}
}
else
{
	frame = 0;
	scale = init_scale;
	temp_scale = init_scale/1.5;
}

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