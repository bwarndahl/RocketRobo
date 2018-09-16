/// @desc ?
if (xbase < room_width + 20)
{
	with (instance_create_layer(x + xbase, y + random_range(5,-5),"BG_Objects", oCloud))
	{
		r = r/1.5;
		// color = $B6FFB5
	}
	xbase += dist;
}