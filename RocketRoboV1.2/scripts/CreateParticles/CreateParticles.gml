/// @desc CreateParticles(x, y, direction_min, direction_max);
/// @param amount
/// @param x
/// @param y
/// @param direction_min
/// @param direction_max

var amount, xx, yy, dir_min, dir_max;
amount	= argument0;
xx		= argument1;
yy		= argument2;
dir_min = argument3;
dir_max = argument4;

var i;
for (i = 0; i < amount; ++i)
	with (instance_create(xx, yy, oParticle))
		direction = random_range(dir_min, dir_max);  