if(keyboard_check_released(ord("P")) && oTransition.mode == TRANSITION.NONE)
{
	audio_resume_all();
	global.constant = 1;
	room_goto(global.RoomBeforePause);
}

if(oTransition.mode == TRANSITION.SHRINK)
{
	audio_resume_all();
	global.constant = 1;
	oGame.once = false;
	room_goto(global.RoomBeforePause);
}

if(keyboard_check_released(vk_lshift))
{
	oTransition.mode = TRANSITION.GROW	
}