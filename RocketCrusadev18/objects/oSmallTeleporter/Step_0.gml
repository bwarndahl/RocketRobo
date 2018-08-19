/// @description Checks which room to spawn into

if(instance_exists(oPlayer))
{
	if(keyboard_check_pressed(vk_down) && x > oPlayer.x - sprite_width/2 && x < oPlayer.x + sprite_width/2)
	{
		switch(instance)
		{
			case 1:
					room_goto(rW1L1C1);
					break;
			
			case 2:
					room_goto(rW1L2C1);
					break;
	
			case 3:
					room_goto(rW1L3C1);
					break;
	
			case 4:
					room_goto(rW1L4C1);
					break;
	
			case 5:
					room_goto(rW1L5C1);
					break;
		}
	}
}
