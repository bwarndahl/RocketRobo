/// @desc ?
with(oPlayer)
{
	switch (state)
	{
	    case states.IDLE: 
	        other.image_speed = 0.1;
	        other.sprite_index = sPlayerIdle;
	    break;
    
	    case states.RUN: 
	        other.image_speed = 0.5; 
	        other.sprite_index = sPlayerRun;
	    break;
    
	    case states.JUMP:
	        // Mid jump   
	        if (!(place_meeting(x, y + 2, oParSolid) && v != 0) && v >= -1.0 && v <= 1.0) {  
	            other.sprite_index = sPlayerJumpM;  
	       } else { 
	            // Rise + fall
	            if (v <= 0)  
	                other.sprite_index = sPlayerJumpU;  
	            else
	                other.sprite_index = sPlayerJumpD;
	        }
         
	        // When against a wall   
	        if (cRight || cLeft)
			{
				other.sprite_index = sPlayerSlide;
				//if(other.sprite_index = sPlayerSlide) facing *= -1
				//if (oPlayer.facing = oPlayer.LEFT) oPlayer.facing = oPlayer.RIGHT
				//if (oPlayer.facing = oPlayer.RIGHT) oPlayer.facing = oPlayer.LEFT
				
				//facing *= -1;
				//if (cLeft)  facing = LEFT;
				//if (cRight) facing = RIGHT;
			}
	    break;
	}
}

// Draw player
if(instance_exists(oPlayer))
{
		if (oPlayer.onGround)
	    draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * oPlayer.yscale) * 0.25, oPlayer.facing * oPlayer.xscale, oPlayer.yscale, 0, c_white, image_alpha);    
	else
	    draw_sprite_ext(sprite_index, image_index, x, y, oPlayer.facing * oPlayer.xscale, oPlayer.yscale, 0, c_white, image_alpha);
}

if(instance_exists(oPlayer))
{
	#region Line & Cursor
	if(oPlayer.state != states.RESPAWN)
	{
		// Line to mouse
		draw_set_alpha(0.25);
		draw_line_width(x, y, mouse_x, mouse_y, 4);
		draw_set_alpha(1);


		// Draw cursor
		if(instance_exists(oGauntletR)) && (oGauntletR.isActive != true)  || (instance_exists(oGauntletL)) && (oGauntletL.isActive != true) draw_sprite_ext(sCursor, -1, mouse_x, mouse_y, 1, 1, point_direction(x, y, mouse_x, mouse_y) + 45, c_white, 1);
		else draw_sprite_ext(sCursorClick, -1, mouse_x, mouse_y, 1, 1, point_direction(x, y, mouse_x, mouse_y) + 45, c_white, 1);
	}
	#endregion
}




if (r <= 0) r = 0;
if (pulse <= 0) pulse = 0;
//draw_sprite_ext(sGun, gun, x + lengthdir_x(4, point_direction(x, y, mouse_x, mouse_y)), y + 4 + lengthdir_y(4, point_direction(x, y, mouse_x, mouse_y)), xscale, facing, point_direction(x, y, mouse_x, mouse_y), c_white, 1);
if(instance_exists(oPlayer))
{
	if(oPlayer.state == states.RESPAWN)
	{
		r = 12;
		pulse = Wave(-2,2,5,0);
	
	}
	else
	{
		pulse -= 0.5;
		r -= 0.3;
	}
}

draw_circle_color(x, y, r + pulse, c_white, c_white, false);