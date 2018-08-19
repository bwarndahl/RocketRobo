/// @desc ?

// Line to mouse
if(oPlayer.state != states.RESPAWN)
{	
	// Line to mouse
	draw_set_alpha(0.25);
	draw_line_width(oPlayer.x, oPlayer.y + 6, mouse_x, mouse_y, 4);
	draw_set_alpha(1);
}

draw_self();

if(flash > 0) && (!isActive)
{
	flash--
	shader_set(shWhite);
	draw_self();
	shader_reset();
}