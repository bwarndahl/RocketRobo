/// @description Insert description here
// You can write your code in this editor

if(file_exists("savedgame2.sav"))
{
	draw_set_font(font0);
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_self();
	draw_set_halign(fa_left);
	draw_set_valign(fa_center);
	draw_text_transformed(x-90, y-110, "METAL: " + string(metals), 1, 1, 0);
	draw_text_transformed(x-90, y-90, "SECONDS: " + string(seconds), 1, 1, 0);	
}
else
{
	draw_self();	
}