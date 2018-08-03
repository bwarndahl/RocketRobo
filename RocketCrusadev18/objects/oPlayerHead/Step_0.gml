/// @desc ?

// Reset Body Part Coords
if(instance_exists(oPlayer))
{
	x = oPlayer.x
	y = oPlayer.y - 6	
}

switch oPlayer.look
{
	case looking.UP:
	image_index = 1;
	break
	
	case looking.UPRIGHT:
	image_index = 2;
	break
	
	case looking.RIGHT:
	image_index = 3;
	break
	
	case looking.DOWNRIGHT:
	image_index = 4;
	break
	
	case looking.DOWN:
	image_index = 5;
	break
	
	case looking.DOWNLEFT:
	image_index = 6;
	break
	
	case looking.LEFT:
	image_index = 7;
	break
	
	case looking.UPLEFT:
	image_index = 8;
	break
}

if(oPlayer.state = states.RESPAWN) image_alpha = 0;
else image_alpha = 1;