/// @desc ?
draw_self();

if(flash > 0)
{
	flash--
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

if(oPlayer.isIntangible)
{
	temp++;
	
	if(temp/8 == 1)
	{
		shader_set(shWhite)
		draw_self();
		shader_reset();
		
		temp = 0;
	}
}
else temp = 0;