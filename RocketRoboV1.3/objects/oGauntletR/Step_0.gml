/// @desc State & Looking Code
if(oPlayer.hasControl)
{
	#region Left Click
	if (Gstate = Gstates.INACTIVE) && (instance_exists(oGauntletR))
	{
		if (kClick) && (oPlayer.hasControl)
		{
			// Rocket creation + aim at mouse
			audio_play_sound(sfxShot,5,false);
			ScreenShake(global.gMagnitude,global.gLength);
			Gstate = Gstates.ROCKET;
			x = oPlayer.x;
			y = oPlayer.y;
			image_index = 2;
			image_xscale = 1;
		    direction = point_direction(x, y, mouse_x, mouse_y) // + random_range(-2, 2);   
			image_angle = direction;
			if (direction > 0 && 90 > direction || direction > 270 && 360 > direction) image_yscale = 1;
			else image_yscale = -1;
		
			speed = 2;
				
			with(oPlayer)
			{
				canShoot = false;
				alarm[9] = 3;
				alarm[10] = 60;
			}
				
			// image_index = sGauntletR;
            
	            /*
		    // Distort player sprite
		    if (choose(0, 1))
			{
				xscale = 1.3;
		        yscale = 0.7;
		    } else {
				yscale = 1.3;
				xscale = 0.7;        
		    }
			*/	
				alarm[0] = delay;
		    }
		
		
	}
	#endregion


	#region Right Click
	if (Gstate = Gstates.INACTIVE) && (instance_exists(oGauntletR))
	{
		if (kRClick) && (oPlayer.hasControl)
		{
			// Rocket creation + aim at mouse
			audio_play_sound(sfxShot,5,false);
			ScreenShake(global.gMagnitude,global.gLength);
			Gstate = Gstates.GRAB;
			x = oPlayer.x;
			y = oPlayer.y;
			image_index = 2;
			image_xscale = 1;
		    direction = point_direction(x, y, mouse_x, mouse_y) 
			image_angle = direction;
			if (direction > 0 && 90 > direction || direction > 270 && 360 > direction) image_yscale = 1;
			else image_yscale = -1;

			speed = 2;
				
			with(oPlayer)
			{
				canShoot = false;
				alarm[9] = 3;	//canShoot
				alarm[10] = 60;	//Respawn
			}
		}
		
	}
	#endregion

}


event_inherited();


if(oPlayer.dJump = false) sprite_index = sGauntletRY;
else if(oPlayer.hp < 2) sprite_index = sGauntletRR;
else sprite_index = sGauntletR;