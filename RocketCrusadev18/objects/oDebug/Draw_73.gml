/// @description Debug Text
draw_set_color(c_white);

draw_set_halign(fa_center);

draw_set_font(fontAng)

if(instance_exists(oGame))
{
	DebugDraw(oGame.metal);
}