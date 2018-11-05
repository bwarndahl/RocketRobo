/// @description Set Up Camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

//display_set_gui_size(global.view_w,global.view_h);

xoffset = 0;
yoffset = 0;
xMove = 0;
yMove = 0;
magnitude = 20;
//facingoffset = 2;
groundoffset = 0; //8;
lookingoffset = 8;
angle = 0;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
buff = 32;

count = 0;

layerx = 0;
layerhspeed = 1;

//Global Shake Variables

global.gMagnitude = 3; //Gauntlet Launch
global.gLength = 10;

global.eMagnitude = 5; //Explosion
global.eLength = 15;
