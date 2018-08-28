//Full Screen Game
window_set_fullscreen(true);
//Randomizes RNG
randomize();

//Creates Objects
//instance_create_layer(0,0,"lGame",oCamera); //-1000
//instance_create_layer(0,0,"lGame",oTransition); //-999
//instance_create_layer(0,0,"lGame",oPause); //-998

instance_create_depth(0,0,-1000,oCamera); //-1000
instance_create_depth(0,0,-999,oTransition); //-999
instance_create_depth(0,0,-998,oPause); //-998
instance_create_layer(0,0,"lGame",oGame);
instance_create_layer(0,0,"lGame",oDebug);

//Creates Mouse
instance_create_layer(0,0,"lMouse",oMouse);

//Global Variables
global.PauseScreenShot = 0;
global.click = false;
global.xPos = 0;
global.yPos = 0;
global.pause = false;
global.file = 0;