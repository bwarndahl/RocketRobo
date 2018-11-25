/// @desc slideTransition(mode,targetRoom)
/// @arg TRANS_TYPE
/// @arg mode
/// @arg targetRoom
/// @arg targetx
/// @arg targety

with(oTransition)
{
	type = argument[0]
	if(argument[0] = TRANS_TYPE.TILE) fade = true;
	
	mode = argument[1];
	
	if(argument_count > 2) targetRoom  = argument[1];
	if(argument_count > 3) targetx     = argument[2];
	if(argument_count > 4) targety     = argument[3];
	
	
	// oPlayer.x = targetx
	// oPlayer.y = targety
}