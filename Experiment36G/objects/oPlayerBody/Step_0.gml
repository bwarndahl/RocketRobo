/// @desc ?
x = oPlayer.x;
y = oPlayer.y + yoffset;
if (!oPlayer.onGround) y -= airoffset;



// Swap facing on walls
with(oPlayer)
{
	// Face mouse position
	if (oPlayerBody.sprite_index != sPlayerSlide)
	{
		if (mouse_x >= x) facing = 1;
		else facing = -1;
	}
	/*
	if (states == states.JUMP)
	{
	    if (cLeft)
	        facing = RIGHT;
	    if (cRight)
	        facing = LEFT;
	}
	*/
}

if(oPlayer.state = states.RESPAWN)
{
	image_alpha = 0;
	draw_circle_color(x, y, 12 + Wave(-2,2,5,0), c_white, c_white, false);
}
else image_alpha = 1;