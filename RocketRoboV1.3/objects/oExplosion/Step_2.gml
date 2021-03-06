/// @description Calculate Knockback
kbDirection = point_direction(x,y,oPlayer.x,oPlayer.y);
kbDistance = point_distance(x,y,oPlayer.x,oPlayer.y);
kbx = lengthdir_x(kbDistance,kbDirection);
kby = lengthdir_y(kbDistance,kbDirection);

if(collision_circle(x,y,r,oPlayer,false,false)) && (image_index <= 2)
{	
	with(oPlayer)
	{
		if(isSolid)
		{
			h += other.kbx / other.kbmagnitude;
			v += other.kby / other.kbmagnitude;
			tempFric = airFric;
			tempAccel = airAccel;
		}
	}
	mask_index = -1;
}

if (r > 0) r -= 5; //Radius decay
if (r < 0) r = 0;