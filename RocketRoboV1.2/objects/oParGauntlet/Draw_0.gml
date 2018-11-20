 /// @desc Chain, Flash

#region Chain
if(Gstate = Gstates.GRAB)
{
	var dist = point_distance(x,y + 3,oPlayer.x,oPlayer.y + 6)
	var dir  = point_direction(x,y + 3,oPlayer.x,oPlayer.y + 6);
	
	var xx = lengthdir_x(dist,dir);
	var yy = lengthdir_y(dist,dir);	
	
	var i;
	for(i = 0; i < dist; i++)
	{
		if(i/5 = 1)
		{
			with(instance_create_layer(x - 1,y + 12,chain_layer,oChain))
			{
				parent = other;
				origin = i;
				distan = i;
			}
		}
	}
}
#endregion

draw_self();


if(flash > 0) && (!isActive)
{
	flash--
	shader_set(shWhite);
	draw_self();
	shader_reset();
}