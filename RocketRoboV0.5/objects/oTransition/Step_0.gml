/// @desc Progress the Transition
if(type = TRANS_TYPE.CIRCLE)
{
	if(mode != TRANS_MODE.OFF)
	{
		if(mode == TRANS_MODE.INTRO)
		{
			percent = max(0,percent - max((percent/10), 0.005));
		}
		else
		{
			percent = min(1,percent + max(((1 - percent)/10), 0.005));
		}
	}


	//if (targetx != 0) tempx = targetx
	//if (targety != 0) tempy = targety



	
	if(percent == 1) || (percent == 0) //|| (done = true)
	{
		switch(mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
		
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				//instance_create_layer(targetx, targety, "lPlayer", oPlayer);
				break;
			}
		
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(targetRoom);
				//instance_create_layer(targetx, targety, "lPlayer", oPlayer);
				break;
			}
		
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}



if(type = TRANS_TYPE.TILE)
{
	if (done)
	{
		room_goto(targetRoom);
	    done = false;
		//draw_circle_color(oTransition.w_half, oTransition.h_half,32,c_red,c_red,false)
	}

	//Start Transition
	if (fade)
	{
	    //Increment our timer
	    timer += 1/room_speed;
    
	    if (timer % 4)
	    {
	        //If our counter is less than the width of the screen, Start spawning!
	        if (counter < width) spawn = true;
	        counter++;
	    }
    
	    //Start Spawning
	    if (spawn)
	    {
	        //Loop to spawn vertical strips of our transition objects.
	        for(var i = 0; i < height; i++)
	        {
	            //Position
	            xx = spritesize*counter;
	            yy = spritesize*i;
	            //Create tile object
	            with(instance_create(0, 0, oTile))
	            {
	                sprite_index = oTransition.sprite;
	                xx = oTransition.xx;
	                yy = oTransition.yy;
	            }
	        }
	        //Finished spawning our objects now set spawn to false
	        spawn = false;
	    }
    
	    //Screen is filled with transition objects, reset all variables
	    if (counter-30 > width)
	    {
	        counter = -1;
	        fade = false;
	        timer = 1;
	        done = true;
	    }
	}
}

/*
if (room = targetRoom) && (!instance_exists(oPlayer))
{
	instance_create_layer(targetx, targety, "lPlayer", oPlayer);
		//if (!instance_exists(oCamera)) instance_create_layer(other.x,other.y,"lGame",oCamera);
}
*/

/*
if (room = targetRoom) && (instance_exists(oCamera))
{
	with(instance_create_layer(targetx, targety, "lGame", oCamera))
	{
		if (!instance_exists(oCamera)) instance_create_layer(other.x,other.y,"lGame",oCamera);
	}
}
*/
