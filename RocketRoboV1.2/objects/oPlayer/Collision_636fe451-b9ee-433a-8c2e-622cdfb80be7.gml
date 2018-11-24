/// @desc Take Damage, Set Intangibility
if(!isIntangible) && (!other.isIntangible)
{
	hp--;
	var dir  = point_direction(x,y,other.x,other.y);
	var dist = 6;

	var hh = lengthdir_x(dist,dir);
	var vv = lengthdir_y(dist,dir);

	h = -hh;
	v = -vv;
	
	isIntangible = true;
	var intang_frames = 20;
	alarm[1] = intang_frames;

	hit = 20;

	hasControl = false;
	var hitstun_frames = 20;
	alarm[2] = hitstun_frames;
	
	if(!hp <= 0) audio_play_sound(sfxHurt,5,false);
}
