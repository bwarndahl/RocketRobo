/// @description Restart & Mute
if(!instance_exists(oCursor)) instance_create_layer(mouse_x, mouse_y, "lCursor", oCursor)
// Initialize Input Variables
var kRestart, kMute;

//kRestart   = keyboard_check_pressed(ord("R"));
kRestart      = keyboard_check_pressed(ord("R"));
kMute		  = keyboard_check_pressed(ord("M"))

// For Testing Purposes
if (kRestart) SlideTransition(TRANS_TYPE.CIRCLE,TRANS_MODE.RESTART);
	
if (kMute)
{
	if (mute) mute = false;
	else mute = true;
}

if (mute = true) audio_sound_gain(mTest,0,10);
else audio_sound_gain(mTest,0.1,10);
