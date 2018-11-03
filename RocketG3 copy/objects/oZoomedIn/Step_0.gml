/// @description Quit

if(global.zoom)
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
	
	if(mouse_check_button_released(mb_left))
	{
		
		image_alpha = 1;
		if(image_index == 1)
		{
			image_index = 0;	
			global.zoom = false;
		}
		else
		{
			image_index = 1;
			global.zoom = true;
		}
	}
	
}
else
{
	image_alpha = 1;	
}
