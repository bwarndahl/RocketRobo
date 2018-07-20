/// @desc Ricochet
if(!isOpen) && (other.isActive)
{
	other.GstateL = Gstates.RICOCHET
	isOpen = true;
	
	/*
	if (spawn =! 0) && (spawnLayer != 0)
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
	*/
}