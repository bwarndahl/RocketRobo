/// @desc Draw Circle

//Get camera coords.
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
///Make the adjustment to GUI.
var xx = (oPlayer.x-cx)//*display_scalex;
var yy = (oPlayer.y-cy)//*display_scaley;


//draw_circle(oPlayer.x, oPlayer.y, 10, true);

if(type = TRANS_TYPE.CIRCLE)
{
	if(mode != TRANS_MODE.OFF)
	{
		draw_circle_color(xx, yy, percent * (w * 1.5), $340910, $340910, false);
		// draw_circle(oPlayer.x - lengthdir_x(point_distance(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y),(point_direction(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y))), oPlayer.y - lengthdir_y(point_distance(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y),(point_direction(oPlayer.x,oPlayer.y,oCamera.x,oCamera.y))), percent * (w * 1.5), false);
	}
}

if(type = TRANS_TYPE.TILE)
{
	#region Tile Transition
	
	if (done)
	{
	    //Insert your code here
	    //switch rooms, load cutscene, etc.
	    done = false;
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
    
	    //Start Spawning!
	    if (spawn)
	    {
	        //Loop to spawn vertical strips of our transition objects.
	        for(var i = 0; i < height; i++)
	        {
	            //Position
	            xxx = spritesize*counter;
	            yyy = spritesize*i;
	            //Create transition object
	            with(instance_create(0, 0, obj_transition))
	            {
	                sprite_index = other.sprite;
	                xxx = other.xxx;
	                yyy = other.yyy;
	            }
	        }
	        //Finished spawning our objects now set spawn to false
	        spawn = false;
	    }
    
	    //Our screen is filled with transition objects, reset all variables
	    if (counter-30 > width)
	    {
	        counter = -1;
	        fade = false;
	        timer = 1;
	        done = true;
	    }
	}

	#endregion
}
