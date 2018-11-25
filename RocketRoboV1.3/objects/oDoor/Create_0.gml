/// @desc ?
//isLocked = false;
delay = true;

//test = false;

enum doorStates
{
	LOCKED,
	UNLOCKING,
	UNLOCKED
}
dstate = doorStates.UNLOCKED;

targetx = 0;
targety = 0;
type = TRANS_TYPE.CIRCLE;