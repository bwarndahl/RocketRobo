/// @desc ?
if (xbase < room_width + 20)
{
	instance_create_layer(x + xbase, y + random_range(5,-5),"FG_Objects", oCloud)
	xbase += dist;
}