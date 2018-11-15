/// @desc ?

if(oPlayer.hasControl)
{
	#region Left Click
	if (Gstate= Gstates.INACTIVE) && (oPlayer.canShoot) 
	{
		if (oPlayer.kClick) 
		{
			// Rocket creation + aim at mouse
			audio_play_sound(sfxShot,5,false);
			ScreenShake(global.gMagnitude,global.gLength);
			Gstate= Gstates.ROCKET;
			x = oPlayer.x;
			y = oPlayer.y;
				
			image_index = 2;
			image_xscale = 1;
		    direction = point_direction(x, y, mouse_x, mouse_y) // + random_range(-2, 2);   
			image_angle = direction;
			if (direction > 0 && 90 > direction || direction > 270 && 360 > direction) image_yscale = 1;
			else image_yscale = -1;
		
			//speed += 2;
			//speed = clamp(speed,2,30);
			speed = 2;
				
			with(oPlayer)
			{
				canShoot = false;
				alarm[9] = 3;
				alarm[11] = 60;
			}
		alarm[0] = delay;
		}
		
	}
	#endregion


	#region Right Click
	if (Gstate = Gstates.INACTIVE) && (oPlayer.canShoot)
	{
		if (oPlayer.kRClick) && (oPlayer.hasControl)
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
				alarm[11] = 60;	//Respawn
			}
		}
	}
	#endregion
}


event_inherited();


if(oPlayer.dJump = false) sprite_index = sGauntletLY;
else if(oPlayer.hp < 2) sprite_index = sGauntletLR;
else sprite_index = sGauntletL;