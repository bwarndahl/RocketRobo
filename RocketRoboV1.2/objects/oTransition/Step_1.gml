/// @desc Update Variables
w = display_get_gui_width();
h = display_get_gui_height();

w_half = w / 2;
h_half = h / 2;

var magic_number = 16;
width  = (w / spritesize) + magic_number;
height = h / spritesize;


///Get the width and height of view.
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);
///Set variables to hold the value and div that by width and height.
display_scalex = display_get_gui_width()/cw;
display_scaley = display_get_gui_height()/ch;
