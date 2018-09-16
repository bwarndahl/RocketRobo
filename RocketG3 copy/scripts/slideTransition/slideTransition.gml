/// @desc slideTransition(mode,targetRoom)
/// @arg mode
/// @arg targetRoom
/// @arg targetx
/// @arg targety

with(oTransition)
{
	mode = argument[0];
	
	if(argument_count > 1) targetRoom  = argument[1];
	if(argument_count > 2) targetx     = argument[2];
	if(argument_count > 3) targety     = argument[3];
	
	if(argument_count > 4)
	{
		type        = argument[4];
		if(argument[4] = TRANS_TYPE.TILE) fade = true;
	}
	
	
	
	// oPlayer.x = targetx
	// oPlayer.y = targety
	
}