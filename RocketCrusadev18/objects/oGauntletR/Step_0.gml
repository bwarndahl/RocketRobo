/// @desc ?
xTo = oPlayer.x - (6 * sign(oPlayer.facing)) - 12;
distx = point_distance(x, y, oPlayer.x - (6 * sign(oPlayer.facing)),oPlayer.y);
if (Gstate = Gstates.ROCKET) || (Gstate = Gstates.GRAB) || (Gstate = Gstates.RICOCHET) isActive = true;

// Reset Body Part Coords
if(Gstate = Gstates.INACTIVE)
{
	// x = oPlayer.x - (6 * sign(oPlayer.facing));
	// y = oPlayer.y + 3;
	// if(oPlayer.state = states.IDLE) y = y + Wave(3,-3, 0.2, 0);
	
	switch oPlayer.look
	{
		case looking.UP:
		image_angle = 90;
		break
	
		case looking.UPRIGHT:
		image_angle = 45;
		break
	
		case looking.RIGHT:
		image_angle = 0;
		break
	
		case looking.DOWNRIGHT:
		image_angle = 315;
		break
	
		case looking.DOWN:
		image_angle = 270;
		break
	
		case looking.DOWNLEFT:
		image_angle = 225;
		break
	
		case looking.LEFT:
		image_angle = 180;
		break
	
		case looking.UPLEFT:
		image_angle = 135;
		break
	}
	
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


//with (oPlayer)
//{
// Shoot //////////////////////////////////////////////////////////////////////
if (Gstate = Gstates.INACTIVE) && (instance_exists(oGauntletR)) {
	if (oPlayer.kClick) {
		// Rocket creation + aim at mouse
		Gstate = Gstates.ROCKET;
		x = oPlayer.x;
		y = oPlayer.y;
				
	    direction = point_direction(x, y, mouse_x, mouse_y) // + random_range(-2, 2);   
		image_angle = direction;
				
		//speed += 2;
		//speed = clamp(speed,2,30);
		speed = 2;
				
		with(oPlayer)
		{
			canShoot = false;
			alarm[9] = 3;
			alarm[10] = 30;
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

///Trail

if(isActive)
{
	var trailx = x + lengthdir_x(6, direction) + random_range(-1,1);
	var traily = y + lengthdir_y(6, direction) + random_range(-1,1);
	
	var trail = instance_create(trailx,traily,oTrail);
	trail.image_angle = image_angle;
	
	speed *= 1.5;
	speed = clamp(speed,2,18)
}

if(Gstate = Gstates.RICOCHET)
{
	direction = random_range(0,180);
	image_angle += 45;
}

if(oPlayer.state = states.RESPAWN) image_alpha = 0;
else image_alpha = 1;

h = (lengthdir_x(speed,direction));
v = (lengthdir_y(speed,direction));
if(place_meeting(x+h, y+v, oParSolid))
{
	if (isActive)
	{
		instance_create(x,y,oExplosion);
		with (oPlayer) alarm[10] = 60;
		instance_destroy();
	}
}