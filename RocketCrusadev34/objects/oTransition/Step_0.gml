/// @desc Progress the Transition

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


if (targetx != 0) tempx = targetx
if (targety != 0) tempy = targety


if(percent == 1) || (percent == 0)
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
			break;
		}
		
		case TRANS_MODE.GOTO:
		{
			mode = TRANS_MODE.INTRO;
			room_goto(targetRoom);
			break;
		}
		
		case TRANS_MODE.RESTART:
		{
			game_restart();
			break;
		}
		
	}
	
}

if (room = targetRoom) && (!instance_exists(oPlayer))
{
	with(instance_create_layer(targetx, targety, "lPlayer", oPlayer))
	{
		if (!instance_exists(oCamera)) instance_create_layer(other.x,other.y,"lGame",oCamera);
	}
}

/*
if (room = targetRoom) && (instance_exists(oCamera))
{
	with(instance_create_layer(targetx, targety, "lGame", oCamera))
	{
		if (!instance_exists(oCamera)) instance_create_layer(other.x,other.y,"lGame",oCamera);
	}
}
*/


