if(instance_exists(oPlayer))
{
	if (place_meeting(x,y,oPlayer))
	{
		oGame.metal += 1;
		instance_destroy();	
	}	
}