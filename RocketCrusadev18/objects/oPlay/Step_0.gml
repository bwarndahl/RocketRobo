/// @description Hub Room
if (position_meeting(mouse_x,mouse_y,self))
{
	if (mouse_check_button(mb_left))
	{
		image_alpha = 0.5;
	}
	
	if( mouse_check_button_released(mb_left))
	{
		image_alpha = 1;
		audio_stop_all();
		room_goto(rTesting); //rHub
	}
	
}
else
{
	image_alpha = 1;	
}
