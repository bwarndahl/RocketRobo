/// @desc ?

/*
if (room = targetRoom) && (instance_exists(oPlayer)) && (hasKey) && (!instance_exists(oKey))
{
	with instance_create_layer(oPlayer.x,oPlayer.y,"lPlayer",oKey) keyState = keyStates.ACTIVE;
}
*/

/*
if (room = targetRoom) && (!instance_exists(oPlayer))
{
	instance_create_layer(targetx, targety, "lPlayer", oPlayer);
		//if (!instance_exists(oCamera)) instance_create_layer(other.x,other.y,"lGame",oCamera);
}
*/