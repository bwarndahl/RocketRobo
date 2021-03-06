/// @description Set Font
enum gameStates
{
	MENU,
	PLAY
}
gameState = gameStates.PLAY;

defaultx = 707;
defaulty = 917;

audio_play_sound(mTest,10,true);

enum enemyStates
{
	IDLE,
	WANDER,
	FOLLOW,
	ATTACK,
	STUN
}

// Input //////////////////////////////////////////////////////////////////////
globalvar kLeft, kRight, kUp, kDown, kDownP, kJump, kJumpRelease, kJumpHeld, kClick, kRClick, kRun, kTaunt;

kLeft        = keyboard_check(ord("A"));
kRight       = keyboard_check(ord("D"));
kUp          = keyboard_check(ord("W"));
kDown        = keyboard_check(ord("S"));
kDownP       = keyboard_check_pressed(ord("S"));
kJump        = keyboard_check_pressed(vk_space);
kJumpRelease = keyboard_check_released(vk_space);
kJumpHeld    = keyboard_check(vk_space);
kClick       = mouse_check_button_pressed(mb_left);
kRClick      = mouse_check_button_pressed(mb_right);
kRun         = keyboard_check_pressed(vk_lshift);
kTaunt       = keyboard_check_pressed(ord("T"));