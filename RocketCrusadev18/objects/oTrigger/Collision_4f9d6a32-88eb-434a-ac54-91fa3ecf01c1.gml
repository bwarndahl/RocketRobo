/// @desc ?

with (oPlayer)
{
	if(hasControl)
	{
		hasControl = false
		slideTransition(TRANS_MODE.GOTO, other.targetRoom, other.targetx, other.targety)
	}
}