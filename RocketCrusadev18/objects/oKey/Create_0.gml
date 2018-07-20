/// @desc ?
enum keyStates
{
	INACTIVE,
	ACTIVE,
	UNLOCK
}
keyState = keyStates.INACTIVE
oldkeyState = keyState;

if(instance_exists(oPlayer))
{
	xTo = oPlayer.x;
	yTo = oPlayer.y;
	spd = 8;
} else {
	xTo = 0;
	yTo = 0;
	spd = 8;
}