/// @desc ?
x = mouse_x;
y = mouse_y;
			
if(Cstate == Cstates.PLAY)
{
	if(oPlayer.state != states.RESPAWN)
	{
		// Draw cursor
		if(instance_exists(oGauntletR)) && (oGauntletR.isActive != true)  || (instance_exists(oGauntletL)) && (oGauntletL.isActive != true) && (!click) image_index = 0;
		else image_index = 1;
	}
	
	if (oPlayer.kClick)
	{
		image_index = 1;
		click = true;
		alarm[0] = 5;
	}
}

draw_self();