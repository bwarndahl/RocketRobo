
// Font ///////////////////////////////////////////////////////////////////////
globalvar FONT, FONT2;
FONT = font_add_sprite(sFontDefault, ord(" "), 0, 1);
FONT2 = font_add_sprite(sFont20x20, ord(" "), 0, 1);

draw_set_color(c_white);
draw_set_font(FONT);

fontAng = 0;
///////////////////////////////////////////////////////////////////////////////

count = 1;
mute = true;
