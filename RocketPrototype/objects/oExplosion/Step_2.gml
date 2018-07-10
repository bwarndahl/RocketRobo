/// @description Calculate Knockback
kbDirection = point_direction(x,y,oPlayer.x,oPlayer.y);
kbDistance = point_distance(x,y,oPlayer.x,oPlayer.y);
kbx = lengthdir_x(kbDistance,kbDirection);
kby = lengthdir_y(kbDistance,kbDirection);

if(collision_circle(x,y,25,oPlayer,false,false))
{
	with(oPlayer)
	{
	h += other.kbx / other.kbmagnitude;
	v += other.kby / other.kbmagnitude;
	tempFric = airFric;
	tempAccel = airAccel;
	}
	mask_index = -1;
}