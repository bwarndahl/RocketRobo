
if (position_meeting(mouse_x,mouse_y,self))
{
	if (mouse_check_button(mb_left))
	{
		image_alpha = 0.5;
	}
	
	if(mouse_check_button_released(mb_left) && delete == false)
	{
		image_alpha = 1;
		oMouse.image_index = 1;
		image_blend = c_red;
		delete = true;
	}
	else if (mouse_check_button_released(mb_left) && delete == true)
	{
		image_alpha = 1;
		oMouse.image_index = 0;
		image_blend = c_white;
		delete = false;
		oSlot1.red = false;
		oSlot2.red = false;
		oSlot3.red = false;
		oSlot1.image_blend = c_white;	
		oSlot2.image_blend = c_white;	
		oSlot3.image_blend = c_white;
		
		if(instance_exists(oYes))
		{
		   instance_destroy(oYes);
		}
		if(instance_exists(oNo))
		{
			instance_destroy(oNo);	
		}
		if(instance_exists(oCheck))
		{
			instance_destroy(oCheck);
		}
	}
}
else
{
	image_alpha = 1;	
}