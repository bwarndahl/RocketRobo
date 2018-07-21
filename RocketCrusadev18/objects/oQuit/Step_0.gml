/// @description Quit
if (position_meeting(mouse_x,mouse_y,self))
{
	if (mouse_check_button(mb_left))
	{
		image_alpha = 0.5;
	}
	
	if( mouse_check_button_released(mb_left))
	{
		image_alpha = 1;
		game_end();
	}
	
}
else
{
	image_alpha = 1;	
}
