/// @description Restart & Close

// Initialize Input Variables
var kRestart, kQuit, kTest;

//kRestart   = keyboard_check_pressed(ord("R"));
kQuit      = keyboard_check_pressed(vk_escape);
kTest      = keyboard_check_pressed(vk_lshift);

// Restart application
// if (kRestart)
//     game_restart();
    
// Close application
if (kQuit)
    game_end();
	
// For Testing Purposes
if (kTest)
    slideTransition(TRANS_MODE.RESTART);
	
// if (!instance_exists(oPlayer)) instance_create_layer(oTransition.tempx, oTransition.tempy, "lPlayer", oPlayer)

// Create Camera
/*
if(!instance_exists(oCamera))
{
	instance_create_layer(x, y, "lGame", oCamera)
}
*/

//if (!instance_exists(oPlayer)) && (gameState = gameStates.PLAY) instance_create_layer(defaultx, defaulty, "lPlayer", oPlayer);
