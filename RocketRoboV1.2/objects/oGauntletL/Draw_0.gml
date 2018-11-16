/// @desc Draw Line to Mouse
if(instance_exists(oCursor))
{
	if(oCursor.Cstate = Cstates.PLAY)
	{
		if(CheckPlayer())
		{
			if(oPlayer.state != states.RESPAWN)
			{
				// Draw Line
				draw_set_alpha(0.25)
				draw_line_width_color(mouse_x,mouse_y,oPlayer.x,oPlayer.y,6,c_white,c_white);
				draw_set_alpha(1);
			}
		}
	}
}

event_inherited();
