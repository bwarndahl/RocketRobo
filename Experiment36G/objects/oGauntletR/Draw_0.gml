/// @desc ?
draw_self();

if(flash > 0) && (!isActive)
{
	flash--
	shader_set(shWhite);
	draw_self();
	shader_reset();
}