/// @desc ?
targetx = oPlayer.x + (6 * sign(oPlayer.facing)) - 6;
distx = point_distance(x, y, oPlayer.x - (6 * sign(oPlayer.facing)),oPlayer.y);
if (GstateL = Gstates.ROCKET) || (GstateL = Gstates.GRAB) || (GstateL = Gstates.RICOCHET) isActive = true;

// Reset Body Part Coords
if(GstateL = Gstates.INACTIVE)
{
	if (oPlayer.states = states.IDLE)
	{
		x = targetx
		y = oPlayer.y + 3;
		y = y + Wave(2,-1, 0.8, 0);
	}
	else
	{
		x = targetx
		y = oPlayer.y + 3;
	}
}

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

//with (oPlayer)
//{
// Shoot //////////////////////////////////////////////////////////////////////
if (GstateL = Gstates.INACTIVE) && (oPlayer.canShoot) // && (instance_exists(oGauntletR)) 
{
	if (oPlayer.kClick) 
	{
		// Rocket creation + aim at mouse
		GstateL = Gstates.ROCKET;
		x = oPlayer.x;
		y = oPlayer.y;
				
		direction = point_direction(x, y, mouse_x, mouse_y) // + random_range(-2, 2);   
		image_angle = direction;
				
		if(temp < 10) temp = temp + temp;
		speed = Approach(speed, maxSpeed, temp);
				
		with(oPlayer)
		{
			canShoot = false;
			//alarm[9] = 5;
			//alarm[10] = 30;
			alarm[11] = 60;
		}
		
		alarm[0] = delay;
	}
				
}

///Trail

if (isActive)
{
	var trailx = x + lengthdir_x(6, direction) + random_range(-1,1);
	var traily = y + lengthdir_y(6, direction) + random_range(-1,1);
	
	var trail = instance_create(trailx,traily,oTrail);
	trail.image_angle = image_angle;
}



//else if (GstateL = Gstates.INACTIVE) (oPlayer.canShoot)
//{
	
//}

if(GstateL = Gstates.RICOCHET)
{
	direction = random_range(0,359);
	image_angle += 45;
}

if(oPlayer.state = states.RESPAWN) image_alpha = 0;
else image_alpha = 1;