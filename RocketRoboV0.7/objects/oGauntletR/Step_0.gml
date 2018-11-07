/// @desc ?
//xTo = oPlayer.x - (xoffset * sign(oPlayer.facing)) + 20;
distx = point_distance(x, y, oPlayer.x - (6 * sign(oPlayer.facing)),oPlayer.y);
if (Gstate = Gstates.ROCKET) || (Gstate = Gstates.GRAB) || (Gstate = Gstates.RICOCHET) isActive = true;

if(oPlayer.hasControl)
{
// Shoot //////////////////////////////////////////////////////////////////////

#region Left Click
if (Gstate = Gstates.INACTIVE) && (instance_exists(oGauntletR))
{
	if (oPlayer.kClick) && (oPlayer.hasControl)
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
		
		//speed += 2;
		//speed = clamp(speed,2,30);
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
			alarm[10] = 60;	//Respawn
		}

		//alarm[1] = grab_delay;
	}
		
}
#endregion

} ///////////////////////  hasControl  ////////////////////////////

#region Looking & State Code

// Reset Body Part Coords
if(Gstate = Gstates.INACTIVE) && (oPlayer.hasControl)
{
	xTo = oPlayer.x - (xoffset * sign(oPlayer.facing)) + 20;
	
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



if(oPlayer.state = states.GRAB) && (!isActive)
{
	xTo = oPlayer.x + (xoffset * sign(oPlayer.facing)) + 16;
	
	x += ((xTo - x) / spd) - xoffset;
	y = oPlayer.y + yoffset;
		
}
#endregion


#region isActive
if(isActive)
{
	if(Gstate != Gstates.GRAB)
	{
		///Trail
		var trailx = x + lengthdir_x(6, direction) + random_range(-1,1);
		var traily = y + lengthdir_y(6, direction) + random_range(-1,1);
	
		var trail = instance_create(trailx,traily,oFireG);
		trail.image_angle = image_angle;
		if(speed != maxSpeed) && (Gstate != Gstates.GRAB) speed *= 1.25; //1.5
		
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

#region RICOCHET
if(Gstate = Gstates.RICOCHET)
{
	direction = random_range(0,180);
	image_angle += 45;
}
#endregion

#region RUN
if(Gstate = Gstates.RUN) && (count > 0)
{
	count--
	image_index = 2;
	x += ((xTo - x) / spd) - xoffset; //x = targetx;
	y = oPlayer.y + yoffset;
	
	#region Trail
	if(count > 60)
	{
		var trailx = x + lengthdir_x(6, direction) + random_range(-1,1);
		var traily = y + lengthdir_y(6, direction) + random_range(-1,1);
		var trail = instance_create(trailx,traily,oFireG);
		trail.image_angle = image_angle;
		centerx = lengthdir_x(10,-direction)
		centery = lengthdir_x(10,-direction)
		instance_create(centerx,centery,oFireCenter);
	}
	else
	{
		var trailx = x + lengthdir_x(6, direction) + random_range(-1,1);
		var traily = y + lengthdir_y(6, direction) + random_range(-1,1);
		var trail = instance_create(trailx,traily,oFireY);
		trail.image_angle = image_angle;
		centerx = lengthdir_x(10,-direction)
		centery = lengthdir_x(10,-direction)
		instance_create(centerx,centery,oFireCenter);
	}
	#endregion
	
	if(count == 0) || (!oPlayer.onGround)
	{
		Gstate = Gstates.INACTIVE;
	}
}
#endregion


#region GRAB
if(Gstate = Gstates.GRAB)
{
	image_index = 5;
	if(!grab) speed = maxSpeed * 1.45;
	
	#region Chain
	/*
	chain_count++
	var chain_delay = 2;
	if(chain_count/chain_delay = 1)
	{
		with(instance_create_layer(x,y,"lEffects",oChain))
		{
			parent = other;
		}
		chain_count = 0;
	}
	*/
	#endregion;
	
	//draw_line_color(oPlayer.x,oPlayer.y,x,y,c_red,c_red);
	
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
			//show_debug_message("Active");
			
			if(place_meeting(x,y,other))
			{
				other.Gstate = Gstates.INACTIVE;
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
				
				//h = point_distance(x,y,xprevious,yprevious);
				//v = -point_distance(x,y,xprevious,yprevious);
			}
		}
		
		if(oPlayer.state != states.GRAB)
		{
			//Reset Gauntlet
			grab = false;
			image_angle = 0;
			image_yscale = 1;
			
			//if(instance_exists(oChain)) instance_destroy(oChain);
			
			isActive = false;
			Gstate = Gstates.INACTIVE;
		}
	}
}
else chain_count = 0;

#endregion

if(oPlayer.state = states.RESPAWN) image_alpha = 0;
else image_alpha = 1;

h = (lengthdir_x(speed,direction));
v = (lengthdir_y(speed,direction));

#region Collision
if(place_meeting(x+h, y+v, oParSolid))
{
	if (isActive)
	{
		if(Gstate = Gstates.ROCKET) || (Gstate = Gstates.RICOCHET)
		{
			instance_create(x,y,oExplosion);
			with (oPlayer) alarm[10] = 60; ///Set Respawn
			instance_destroy();
		}
		
		if(Gstate = Gstates.GRAB)
		{
			// Particles
			var i;
			for (i = 0; i < 4; ++i)
				with (instance_create(x, y, oParticle))
					direction = random_range(0, 360);
			
			with(oPlayer) alarm[10] = 60; ///Set Respawn
			instance_destroy();
		}

	}
}
#endregion

if(oPlayer.state = states.TAUNT) && (!isActive)
{
	if(image_index != 2) Approach(image_index,2,1);

	x += ((xTo - x) / spd) - (xoffset + 5); //x = targetx
	y = oPlayer.y + yoffset;
}


if(oPlayer.dJump = false) sprite_index = sGauntletRY;
else sprite_index = sGauntletR;