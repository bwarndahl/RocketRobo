if (position_meeting(mouse_x,mouse_y,self))
{
	if (mouse_check_button(mb_left))
	{
		image_alpha = 0.5;
	}
	
	if( mouse_check_button_released(mb_left))
	{
		image_alpha = 1;
		oMouse.image_index = 0;
		oDelete.image_blend = c_white;
		oSlot1.red = false;
		oSlot2.red = false;
		oSlot3.red = false;
		oSlot1.image_blend = c_white;	
		oSlot2.image_blend = c_white;	
		oSlot3.image_blend = c_white;	
		oDelete.delete = false;
		
		instance_destroy(oYes);
		instance_destroy(oCheck);
		instance_destroy();	
	}
	
}
else
{
	image_alpha = 1;	
}