/// @desc ?

// Reset Body Part Coords
if(Gstate = Gstates.INACTIVE)
{
	// x = oPlayer.x - (6 * sign(oPlayer.facing));
	// y = oPlayer.y + 3;
}

if (oPlayer.states != states.IDLE) && (Gstate != Gstates.ACTIVE)
{
	x = targetx + 12;
}

//Adjust Head Position According to Animation
with (oPlayer)
{
	// if (sprite_index = sPlayerRun &&  1 <= image_index && image_index < 2 || sprite_index = sPlayerRun && 3 <= image_index) other.y += 1;
	// if (sprite_index = sPlayerIdle && 1 <= image_index) other.y += 1;
}

// if (oPlayer.states = states.RUN &&  1 <= image_index && image_index < 2 || states.RUN && 3 <= image_index) y += 1;
// if (oPlayer.states = states.IDLE && 1 <= image_index) y += 1;
