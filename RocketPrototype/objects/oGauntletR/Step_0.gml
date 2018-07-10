/// @desc ?
targetx = oPlayer.x - (6 * sign(oPlayer.facing)) - 12;
distx = point_distance(x, y, oPlayer.x - (6 * sign(oPlayer.facing)),oPlayer.y);


// Reset Body Part Coords
if(Gstate = Gstates.INACTIVE)
{
	// x = oPlayer.x - (6 * sign(oPlayer.facing));
	// y = oPlayer.y + 3;
	// if(oPlayer.state = states.IDLE) y = y + Wave(3,-3, 0.2, 0);
	
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
	if (Gstate = Gstates.INACTIVE) && (instance_exists(oGauntletR)) {
	        if (oPlayer.kClick) {
	            // Rocket creation + aim at mouse
				Gstate = Gstates.ACTIVE;
				x = oPlayer.x;
				y = oPlayer.y;
				
	            direction = point_direction(x, y, mouse_x, mouse_y) // + random_range(-2, 2);   
				image_angle = direction;
				
				if(temp < 10)
				{
					temp = temp + temp;
				}
				speed = Approach(speed, maxSpeed, temp);
				
				with(oPlayer)
				{
					canShoot = false;
					alarm[9] = 3;
					alarm[10] = 30;
				}
				
				// image_index = sGauntletR;
            
            
	            // Distort player sprite
	            if (choose(0, 1)) {
	                xscale = 1.3;
	                yscale = 0.7;
	            } else {
	                yscale = 1.3;
	                xscale = 0.7;        
	            }
					
					alarm[0] = delay;
	            }
				
	    } 

//}