/// @desc ?

with (oPlayer)
{
	if(hasControl)
	{
		SlideTransition(TRANS_MODE.GOTO, other.targetRoom, other.targetx, other.targety, other.type)
		hasControl = false
	}
}