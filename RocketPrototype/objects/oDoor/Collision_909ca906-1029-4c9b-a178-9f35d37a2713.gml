/// @desc ?

with(oPlayer)
{
	if(hasControl)
	{
		if(kDown) && (onGround)
		{
			hasControl = false;
			slideTransition(TRANS_MODE.GOTO, other.targetRoom, other.targetx, other.targety);
			v = 0;
		}
	}
}