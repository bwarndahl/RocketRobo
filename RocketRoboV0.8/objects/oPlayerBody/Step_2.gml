/// @desc Reset Body Part Coords
x = oPlayer.x;
y = oPlayer.y + yoffset;
if (!oPlayer.onGround) y -= airoffset;

if(oPlayer.state = states.TAUNT)
{
	sprite_index = sPlayerIdle;
}

with (oPlayerBody)
{
	if (sprite_index = sPlayerRun)
	{
		if(3 <= image_index) && (image_index < 4) || (7 <= image_index) audio_play_sound(sfxFootstep,2,false);
	}
}