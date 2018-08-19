/// @desc ?
oldkeyState = keyState;
if(keyState = keyStates.INACTIVE)
{
	y += Wave(0.25,-0.25, 3, 0);
	if(place_meeting(x,y,oPlayer) && (!oTransition.hasKey)) keyState = keyStates.ACTIVE;
}
else if(keyState = keyStates.ACTIVE)
{
	xTo = oPlayer.x - (32 * sign(oPlayer.facing));
	yTo = oPlayer.y - 25;
	
	x += (xTo - x) / spd;
	y += (yTo - y) / spd;
	
	oTransition.hasKey = true;
}
else if(keyState = keyStates.UNLOCK)
{
	with (instance_nearest(x,y,oDoor))
	{		
		other.xTo = x
		other.yTo = y
	}
	x += (xTo - x) / spd;
	y += (yTo - y) / spd;
}