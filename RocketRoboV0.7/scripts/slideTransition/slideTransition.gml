/// @desc slideTransition(mode,targetRoom)
/// @arg mode
/// @arg TRANS_TYPE
/// @arg targetRoom
/// @arg targetx
/// @arg targety

with(oTransition)
{
	mode = argument[0];
	
	if(argument_count > 2)
	{
		type		   = argument[4];
		if(argument[4] = TRANS_TYPE.TILE) fade = true;
	}
	
	if(argument_count > 2) targetRoom  = argument[1];
	if(argument_count > 3) targetx     = argument[2];
	if(argument_count > 4) targety     = argument[3];
	

	
	
	
	// oPlayer.x = targetx
	// oPlayer.y = targety
	
}