/// @desc ?

if (room = targetRoom) && (instance_exists(oPlayer)) && (hasKey) && (!instance_exists(oKey))
{
	with instance_create_layer(oPlayer.x,oPlayer.y,"lPlayer",oKey) keyState = keyStates.ACTIVE;
}
