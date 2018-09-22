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

#macro RES_W 1024
#macro RES_H 768

//Items
metal = 0;
seconds = 0;

//Latest Position of Player
xPosition = 0;
yPosition = 0;