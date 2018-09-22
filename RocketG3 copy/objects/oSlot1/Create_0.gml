/// @description Insert description here
// You can write your code in this editor

global.file = 1;
LoadGame();

if (instance_exists(oGame))
{
	metals = oGame.metal;
	seconds = oGame.seconds;
	oGame.metal = 0;
	oGame.seconds = 0;
}
else 
{
	metals = 0
	seconds = 0;
}
global.file = 0;

red = false;
