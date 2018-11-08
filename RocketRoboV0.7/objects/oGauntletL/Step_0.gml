/// @desc ?
//xTo = oPlayer.x + (xoffset * sign(oPlayer.facing)) + 16;
distx = point_distance(x, y, oPlayer.x - (6 * sign(oPlayer.facing)),oPlayer.y);
if (GstateL= Gstates.ROCKET) || (GstateL= Gstates.GRAB) || (GstateL= Gstates.RICOCHET) isActive = true;

if(oPlayer.hasControl)
{
// Shoot //////////////////////////////////////////////////////////////////////
#region Left Click
if (GstateL= Gstates.INACTIVE) && (oPlayer.canShoot) {
	if (oPlayer.kClick) {
		// Rocket creation + aim at mouse
		audio_play_sound(sfxShot,5,false);
		ScreenShake(global.gMagnitude,global.gLength);
		GstateL= Gstates.ROCKET;
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
				
		// image_index = sGauntletR;
            
            
	    // Distort player sprite
	    if (choose(0, 1))
		{
			xscale = 1.3;
	        yscale = 0.7;
	    } else {
			yscale = 1.3;
			xscale = 0.7;        
	    }
					
			alarm[0] = delay;
	    }
		
}
#endregion

#region Right Click
if (GstateL = Gstates.INACTIVE) && (oPlayer.canShoot)
{
	if (oPlayer.kRClick) && (oPlayer.hasControl)
	{
		// Rocket creation + aim at mouse
		audio_play_sound(sfxShot,5,false);
		ScreenShake(global.gMagnitude,global.gLength);
		GstateL = Gstates.GRAB;
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

} //////////////// hasControl  ///////////////////

#region Looking & State Code
if(GstateL= Gstates.INACTIVE)
{
	xTo = oPlayer.x + (xoffset * sign(oPlayer.facing)) + 16;
	
	// x = oPlayer.x - (6 * sign(oPlayer.facing));
	// y = oPlayer.y + 3;
	// if(oPlayer.state = states.IDLE) y = y + Wave(3,-3, 0.2, 0);
	
	switch oPlayer.look
	{
		case looking.UP:
		image_index = 0;
		break
	
		case looking.UPRIGHT:
		image_index = 1;
		break
	
		case looking.RIGHT:
		image_index = 2;
		break
	
		case looking.DOWNRIGHT:
		image_index = 3;
		break
	
		case looking.DOWN:
		image_index = 4;
		break
		
		case looking.DOWNLEFT:
		image_index = 3;
		//image_yscale = -1;
		break
	
		case looking.LEFT:
		image_index = 2;
		//image_yscale = -1;
		break
	
		case looking.UPLEFT:
		image_index = 1;
		//image_yscale = -1;
		break
		
	}
	if (oPlayer.angle >= 0 && 90 > oPlayer.angle || oPlayer.angle >= 270 && 360 > oPlayer.angle) image_xscale = 1;
	else image_xscale = -1;
	
	
	if (oPlayer.states = states.IDLE)
	{
		x += ((xTo - x) / spd) - xoffset; //x = targetx
		y = oPlayer.y + yoffset;
		y = y + Wave(2,-1, 0.8, 0);
	}
	else
	{
		x += ((xTo - x) / spd) - xoffset; //x = targetx;
		y = oPlayer.y + yoffset;
	}
}
#endregion


if(oPlayer.state = states.GRAB) && (!isActive)
{
	xTo = oPlayer.x + (xoffset * sign(oPlayer.facing)) + 16;
	
	x += ((xTo - x) / spd) - xoffset;
	y = oPlayer.y + yoffset;
}


#region isActive
if(isActive)
{
	if(GstateL != Gstates.GRAB)
	{
		//Trail
		var trailx = x + lengthdir_x(6, direction) + random_range(-1,1);
		var traily = y + lengthdir_y(6, direction) + random_range(-1,1);
	
		var trail = instance_create_layer(trailx,traily,"lEffects",oFireG);
		trail.image_angle = image_angle;
		if(speed != maxSpeed) && (GstateL != Gstates.GRAB) speed *= 1.25; //1.5
		
	}
	else
	{
		grab_count++;
		if(grab_count = grab_delay)
		{
			alarm[1] = 1;
		}
	}
	
	speed = clamp(speed,0,maxSpeed)
}
#endregion


#region GRAB
if(GstateL = Gstates.GRAB)
{
	image_index = 5;
	if(!grab) speed = maxSpeed * 1.45;
	
	if(place_meeting(x,y,oParGrabbable))
	{	
		var tempx, tempy;
		tempx = other.x;
		tempy = other.y;
		x = tempx;
		y = tempy;
		
		var grabbed;
		grabbed = other;
		
		grab = true;
		grab_count = 0;
		
		speed = 0;
		image_index = 2;

		with(oPlayer)
		{
			targetx = tempx;
			targety = tempy;
		
			hasControl = false;
			state = states.GRAB;
			
			if(place_meeting(x,y,other))
			{
				other.GstateL = Gstates.INACTIVE;
				other.isActive = false;
				state = states.IDLE;
				
				//Remove Chains
				/*
				for(i = 0; i < instance_number(oChain); i++)
				{
					if(other.parent == self) instance_destroy();
				}
				*/
				instance_destroy(oChain);
				
				isSolid = true;
				hasControl = true;
			}
		}
		
		if(oPlayer.state != states.GRAB)
		{
			//Reset Gauntlet
			grab = false;
			image_angle = 0;
			image_yscale = 1;
			
			isActive = false;
			GstateL = Gstates.INACTIVE;
		}
	}
}
else chain_count = 0;

#endregion


if(oPlayer.state = states.RESPAWN) image_alpha = 0;
else image_alpha = 1;

h = (lengthdir_x(speed,direction));
v = (lengthdir_y(speed,direction));

if(place_meeting(x+h, y+v, oParSolid))
{
	if (isActive)
	{
		if(GstateL = Gstates.ROCKET)
		{
			instance_create(x,y,oExplosion);
			with (oPlayer) alarm[10] = 60;
			instance_destroy();
		}
		
		if(GstateL = Gstates.GRAB)
		{
			var i;
			for (i = 0; i < 4; ++i)
			with (instance_create(x, y, oParticle))
			direction = random_range(0, 360);
		
			instance_destroy();
		}
	}
}


if(oPlayer.state = states.TAUNT) && (!isActive)
{
	image_index = 2;

	x += ((xTo - x) / spd) - (8); //x = targetx
	y = oPlayer.y + yoffset;
}


if(oPlayer.dJump = false) sprite_index = sGauntletLY;
else sprite_index = sGauntletL;