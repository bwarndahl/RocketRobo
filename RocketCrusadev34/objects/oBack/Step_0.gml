/// @description Options Room
if(oDelete.delete == false)
{
	if (position_meeting(mouse_x,mouse_y,self))
	{
		if (mouse_check_button(mb_left))
		{
			image_alpha = 0.5;
		}
	
		if(mouse_check_button_released(mb_left))
		{
			image_alpha = 1;
			if(global.click == false)
			{
				click = true;
				global.click = true;
			}
		}
	
	}
	else
	{
		image_alpha = 1;	
	}

	if(click == true)
	{
		camera_set_view_pos(oCamera.cam,0,camera_get_view_y(oCamera.cam)+((450-camera_get_view_y(oCamera.cam))/acc));
		if(camera_get_view_y(oCamera.cam) <= 451 && camera_get_view_y(oCamera.cam) >= 449)
		{
			click = false;
			global.click = false;
			camera_set_view_pos(oCamera.cam,0,450);
		}
	}
}