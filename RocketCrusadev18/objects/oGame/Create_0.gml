/// @description Set Font
enum gameStates
{
	MENU,
	PLAY
}
gameState = gameStates.PLAY;

defaultx = 552;
defaulty = 456;

// Font ///////////////////////////////////////////////////////////////////////
globalvar FONT;
FONT = font_add_sprite(sFont, ord(" "), 0, 1);

draw_set_color(c_white);
draw_set_font(FONT);

fontAng = 0;
///////////////////////////////////////////////////////////////////////////////