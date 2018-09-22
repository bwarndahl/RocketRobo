/// @desc Progress the Transition
if(type = TRANS_TYPE.CIRCLE)
{
	if(mode != TRANS_MODE.OFF)
	{
		if(mode == TRANS_MODE.INTRO)
		{
			percent = max(0,percent - max((percent/10), 0.005));
		}
		else
		{
			percent = min(1,percent + max(((1 - percent)/10), 0.005));
		}
	}


	//if (targetx != 0) tempx = targetx
	//if (targety != 0) tempy = targety



	
	if(percent == 1) || (percent == 0) //|| (done = true)
	{
		switch(mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
		
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				//instance_create_layer(targetx, targety, "lPlayer", oPlayer);
				break;
			}
		
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(targetRoom);
				//instance_create_layer(targetx, targety, "lPlayer", oPlayer);
				break;
			}
		
			case TRANS_MODE.RESET:
			{
				game_restart();
				break;
			}
			
			case TRANS_MODE.RESTART:
			{
				mode = TRANS_MODE.INTRO;
				global.pause = false;
				room_restart();
				break;
			}
		}
	}
}



if(type = TRANS_TYPE.TILE)
{
	
}

/*
if (room = targetRoom) && (!instance_exists(oPlayer))
{
	instance_create_layer(targetx, targety, "lPlayer", oPlayer);
		//if (!instance_exists(oCamera)) instance_create_layer(other.x,other.y,"lGame",oCamera);
}
*/

/*
if (room = targetRoom) && (instance_exists(oCamera))
{
	with(instance_create_layer(targetx, targety, "lGame", oCamera))
	{
		if (!instance_exists(oCamera)) instance_create_layer(other.x,other.y,"lGame",oCamera);
	}
}
*/
