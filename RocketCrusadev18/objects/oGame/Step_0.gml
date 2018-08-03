if(once == false && !instance_exists(oPlayer))
{
	once = true;
	instance_create_layer(defaultx, defaulty, "lPlayer", oPlayer);	
}

if(room != rMenu && !instance_exists(oPause))
{
	instance_create_layer(0,0,"lGame",oPause);
}

if(room == rPause)
{
	if(instance_exists(oPlayer))
	{
		oPlayer.x = global.xPos;
		oPlayer.y = global.yPos;
	}
}