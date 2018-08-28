/// @description Hub Room

if(file_exists("savedgame1.sav"))
{
	image_index = 1;
}
else
{
	image_index = 0;	
}

if(oDelete.delete == false)
{
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
			global.file = 1;
			LoadGame();	
			room_goto(rHub); //rHub
		}
	
	}
	else
	{
		image_alpha = 1;	
	}
}
else
{
	if (position_meeting(mouse_x,mouse_y,self))
	{
		image_blend = c_red;
	
		if (mouse_check_button(mb_left))
		{
			image_alpha = 0.5;
		}
	
		if(mouse_check_button_released(mb_left))
		{
			image_alpha = 1;
			if(!instance_exists(oCheck))
			{
				instance_create(0,-8,oCheck);
			}
			if(!instance_exists(oYes))
			{
				instance_create_layer(528,48,"Instances",oYes);
			}
			if(!instance_exists(oNo))
			{
				instance_create_layer(648,48,"Instances",oNo);
			}
			
			red = true;
			oSlot2.red = false;
			oSlot3.red = false;
		}
	}
	else
	{
		if(red == false)
		{
			image_blend = c_white;	
			image_alpha = 1;
		}	
	}
}
