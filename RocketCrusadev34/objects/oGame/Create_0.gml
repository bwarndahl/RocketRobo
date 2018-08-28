/// @description Set Font
enum gameStates
{
	MENU,
	PLAY,
	PAUSE
}
gameState = gameStates.MENU;

defaultx = 707;
defaulty = 917;
mute = true;

audio_play_sound(mTest,10,true);

//memory
metal = 0;
seconds = 0;

#macro RES_W 1024
#macro RES_H 768