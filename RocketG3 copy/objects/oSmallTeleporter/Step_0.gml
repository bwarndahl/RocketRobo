/// @description Checks which room to spawn into

if(instance_exists(oPlayer))
{
	if(keyboard_check_pressed(ord("S")) && x > oPlayer.x - sprite_width/2 && x < oPlayer.x + sprite_width/2)
	{
		switch(instance)
		{
			case 1:
					if(levels >= 1)
					{
						oTransition.mode = TRANS_MODE.GOTO;
						oTransition.targetRoom = rTest2;
					  // room_goto(rTest2); //rW1L1C1
					}
					else
					{
						image_index = 2;
					}
					break;
			
			case 2:
					if(levels >= 2)
					{
						room_goto(rW1L2C1);
					}
					else
					{
						image_index = 2;
					}
					break;
	
			case 3:
					if(levels >= 3)
					{
						room_goto(rW1L3C1);
					}
					else
					{
						image_index = 2;
					}
					break;
	
			case 4:
					if(levels >= 4)
					{
						room_goto(rW1L4C1);
					}
					else
					{
						image_index = 2;
					}
					break;
	
			case 5:
					if(levels >= 5)
					{
						room_goto(rW1L5C1);
					}
					else
					{
						image_index = 2;
					}
					break;
		}
	}
}
