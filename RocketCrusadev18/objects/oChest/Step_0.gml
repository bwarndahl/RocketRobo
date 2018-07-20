/// @desc ?
if(isOpen)
{
	if(!animStop) image_speed = 0.5;
	if (spawn =! 0) && (spawnLayer != 0)
	{
		if(!instance_exists(spawn))
		{
			with(instance_create_layer(x, y - 2, spawnLayer, spawn))
			{
				if(y != yTo)
				{
					yTo = y - 16;
					y += (yTo - y) / spd;
				}
			}
		}
	}
}

oldisOpen = isOpen;