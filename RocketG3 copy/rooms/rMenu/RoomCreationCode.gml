//Full Screen Game
window_set_fullscreen(true);
//Randomizes RNG
randomize();

//Creates Objects
instance_create_depth(0,0,-1000,oCamera);
instance_create_depth(0,0,-999,oTransition);
instance_create_depth(0,0,-998,oPause);
instance_create(0,0,oGame);
instance_create(0,0,oDebug);

//Creates Mouse
instance_create_layer(0,0,"lCursor",oMouse);

//Global Variables
global.PauseScreenShot = 0;
global.click = false;
global.xPos = 0;
global.yPos = 0;
global.pause = false;
global.file = 0;