/// @desc ?

// Reset Body Part Coords
x = oPlayer.x; //+ (xoffset * sign(image_xscale));
y = oPlayer.y - yoffset;

cAbove = place_meeting(oPlayer.x,oPlayer.bbox_top + 6,oParSolid);

switch oPlayer.look
{
	case looking.UP:
	image_index = 1;
	break
	
	case looking.UPRIGHT:
	image_index = 1;
	break
	
	case looking.RIGHT:
	image_index = 2;
	break
	
	case looking.DOWNRIGHT:
	image_index = 3;
	break
	
	case looking.DOWN:
	image_index = 3;
	break
	
	case looking.DOWNLEFT:
	image_index = 3;
	break
	
	case looking.LEFT:
	image_index = 2;
	break
	
	case looking.UPLEFT:
	image_index = 1;
	break
}
//image_xscale = oGauntletR.image_xscale;
if (oPlayer.angle >= 0 && 90 > oPlayer.angle || oPlayer.angle >= 270 && 360 > oPlayer.angle) image_xscale = 1;
else image_xscale = -1;

if(oldalpha != image_alpha) flash = 5;
if(oPlayer.state = states.RESPAWN) image_alpha = 0;
else image_alpha = 1;
if(oldalpha != image_alpha) oldalpha = image_alpha;

/*
if(place_meeting(oPlayer.x, oPlayer.bbox_top + 15, oParSolid)) && (oPlayer.v > 0)
{
	audio_play_sound(sfxBonk,5,false);
	
	with (instance_create(x + random_range(-8, 8), bbox_top, oParticle)) direction = random_range(-225, 225);
	
	count = 7;
}

if (count > 0)
{
	image_index = 4;
	count--
}
*/
//image_xscale = oPlayer.facing;

/*
blink++;
if(blink < 120)
{
	image_index = 4;
}
if(blink < 123)
{
	image_index = 1;
	blink = 0;
}
*/

if(oPlayer.hit > 0) image_index = 5;

if(oPlayer.dJump = false) sprite_index = sPlayerHeadY;
else if(oPlayer.hp < 2) sprite_index = sPlayerHeadR;
else sprite_index = sPlayerHead;