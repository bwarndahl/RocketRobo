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