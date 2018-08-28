/// @desc ?

// Reset Body Part Coords
x = oPlayer.x //- xoffset;
y = oPlayer.y - yoffset;

if(cAbove) && (oPlayer.v = 0) && (!oPlayer.onGround) && (!oPlayer.sticking)
{
	audio_play_sound(sfxBonk,5,false);
	
        // Particles
        var i;
        for (i = 0; i < 4; ++i)
            with (instance_create(x + random_range(-8, 8), bbox_top, oParticle))
                direction = random_range(210, 330);     
				
	count = 7;
}

if (count > 0)
{
	image_index = 4;
	count--
}



//Adjust Head Position According to Animation
with (oPlayerBody)
{
	if (sprite_index = sPlayerRun)
	{
		/*
		switch (image_index)
		{
			case 0:
			other.y -= 5;
			break;
			
			case 1:
			other.y -= 3;
			break;
			
			case 2:
			other.y -= 3;
			break;
			
			case 3:
			other.y -= 5;
			break;
			
			case 4:
			other.y -= 5;
			break;
			
			case 5:
			other.y -= 3;
			break;
			
			case 6:
			other.y -= 3;
			break;
			
			case 7:
			other.y -= 5;
			break;
		}
		*/
		if(0 <= image_index) && (image_index < 1) || (3 <= image_index) && (image_index < 5) || (7 <= image_index) other.y -= 1;
		else if(1 <= image_index) && (image_index < 3) || (5 <= image_index) && (image_index < 7) other.y -= 2;
	}
	if (sprite_index = sPlayerIdle && 1 <= image_index) other.y += 1;
}

if(oPlayer.state = states.TAUNT)
{
	image_index = 6;
}
// if (oPlayer.states = states.RUN &&  1 <= image_index && image_index < 2 || states.RUN && 3 <= image_index) y += 1;
// if (oPlayer.states = states.IDLE && 1 <= image_index) y += 1;