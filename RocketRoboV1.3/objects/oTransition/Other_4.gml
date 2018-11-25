/// @desc Create Player on Room Change
if(!CheckPlayer()) && (room = targetRoom) instance_create_layer(targetx, targety,"lPlayer",oPlayer);

with(oCamera)
{
	x = oPlayer.x;
	y = oPlayer.y;
}