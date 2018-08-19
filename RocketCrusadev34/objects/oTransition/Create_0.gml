/// @desc Variables

w = display_get_gui_width();
h = display_get_gui_height();

w_half = w / 2;
h_half = h / 2;

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;

transitionID = 0;
targetRoom = room;
targetx = 0;
targety = 0;

tempx = 0;
tempy = 0;

enum TRANS_TYPE
{
	CIRCLE,
	FADE,
	TILE
}
type = TRANS_TYPE.CIRCLE

///Get the width and height of view.
var cw = camera_get_view_width(view_camera);
var ch = camera_get_view_height(view_camera);
///Set some variables to hold the value and div that by width and height.
display_scalex = display_get_gui_width()/cw;
display_scaley = display_get_gui_height()/ch;

hasKey = false;