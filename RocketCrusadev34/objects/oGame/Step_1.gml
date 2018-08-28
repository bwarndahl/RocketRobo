/// @description Restart & Close

// Initialize Input Variables
var kTest, kMute;

//kRestart   = keyboard_check_pressed(ord("R"));
kMute      = keyboard_check_pressed(ord("M"))

// Restart application
// if (kRestart)
//     game_restart();


// For Testing Purposes
	
if (kMute)
{
	if (mute) mute = false;
	else mute = true;
}

if (mute = true) audio_sound_gain(mTest,0,10);
else audio_sound_gain(mTest,0.1,10);

// if (!instance_exists(oPlayer)) instance_create_layer(oTransition.tempx, oTransition.tempy, "lPlayer", oPlayer)

// Create Camera
/*
if(!instance_exists(oCamera))
{
	instance_create_layer(x, y, "lGame", oCamera)
}
*/

if(gameState == gameStates.PLAY)
{
	if(!instance_exists(oCursor)) instance_create_layer(mouse_x, mouse_y, "lCursor", oCursor);
	if(!instance_exists(oPlayer)) instance_create_layer(defaultx, defaulty, "lPlayer", oPlayer);
}


//if (!instance_exists(oPlayer)) && (gameState = gameStates.PLAY) instance_create_layer(defaultx, defaulty, "lPlayer", oPlayer);
