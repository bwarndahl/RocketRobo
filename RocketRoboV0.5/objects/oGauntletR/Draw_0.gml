 /// @desc ?

if(Gstate = Gstates.GRAB)
{
	/*
	draw_set_alpha(0.8);
	draw_line_width_color(x,y + 3,oPlayer.x,oPlayer.y + 6,6,c_red,c_red);
	draw_set_alpha(1);
	*/
	
	draw_line_width_color(oPlayer.x,oPlayer.y,x,y,16,c_red,c_red);
	
	var dist = point_distance(x,y + 3,oPlayer.x,oPlayer.y + 6)
	var dir  = point_direction(x,y + 3,oPlayer.x,oPlayer.y + 6);
	
	var xx = lengthdir_x(dist,dir);
	var yy = lengthdir_y(dist,dir);	
	
	var i;
	for(i = 0; i < dist; i++)
	{
		if(i/5 = 1)
		{
			with(instance_create_layer(x,y,"lGauntletR",oChain))
			{
				parent = other;
				origin = i;
				distan = i;
			}
		}
	}
	
	/*
	if(place_meeting(x,y,oParGrabbable))
	{
		speed = 0;
		var tempx, tempy;
		tempx = other.x;
		tempy = other.y;
		
		with(oPlayer)
		{
			targetx = tempx;
			targety = tempy;
			
			state = states.GRAB;
		}
	}
	*/
}

draw_self();

if(flash > 0) && (!isActive)
{
	flash--
	shader_set(shWhite);
	draw_self();
	shader_reset();
}