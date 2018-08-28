/// @desc ?
with (oPlayer)
{
	if (hasControl)
	{
		if (kDown) && (onGround) && (oTransition.mode == TRANSITION.NONE)
		{
			if (other.dstate = doorStates.UNLOCKED) && (other.delay)
			{
				hasControl = false;
				
				//slideTransition(TRANS_MODE.GOTO, other.targetRoom, other.targetx, other.targety);
				v = 0;
				h = 0;
			}
			else if (other.dstate = doorStates.LOCKED)
			{
				if (oTransition.hasKey)
				{
					with(instance_nearest(x,y,oKey))
					{
						keyState = keyStates.UNLOCK
					}
				}
			}
		}
	}
}