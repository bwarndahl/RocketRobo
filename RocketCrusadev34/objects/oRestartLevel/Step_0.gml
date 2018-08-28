/// @description Hub Room

if(file_exists("savedgame1.sav"))
{
	image_index = 1;
}
else
{
	image_index = 0;	
}

if (position_meeting(mouse_x,mouse_y,self))
{
	if (mouse_check_button(mb_left))
	{
		image_alpha = 0.5;
	}
	
	if(mouse_check_button_released(mb_left) && global.pause == true)
	{
		image_alpha = 1;
		oTransition.mode = TRANSITION.GROW;
		if(instance_exists(oMouse))
		{
			instance_destroy(oMouse);
		}
		instance_destroy();
	}
	
}
else
{
	image_alpha = 1;	
}