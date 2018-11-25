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
		
		case states.TAUNT:
			other.image_speed = 0.1;
			other.sprite_index = sPlayerIdle;
		break;
	}
}

// Draw player
if (facing = 1) || (facing = -1) oldfacing = facing;
else oldfacing = 1;

if (sign(oPlayer.h) = 0) facing = oldfacing;
else facing = sign(oPlayer.h);

if (oPlayer.onGround)
    draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * oPlayer.yscale) * 0.25, facing, oPlayer.yscale, 0, c_white, image_alpha);    
else
    draw_sprite_ext(sprite_index, image_index, x, y, facing, oPlayer.yscale, 0, c_white, image_alpha);

if (r <= 0) r = 0;
if (pulse <= 0) pulse = 0;
//draw_sprite_ext(sGun, gun, x + lengthdir_x(4, point_direction(x, y, mouse_x, mouse_y)), y + 4 + lengthdir_y(4, point_direction(x, y, mouse_x, mouse_y)), xscale, facing, point_direction(x, y, mouse_x, mouse_y), c_white, 1);

if(oPlayer.state = states.GRAB) sprite_index = sPlayerJumpM; 

if(oPlayer.hit > 0) sprite_index = sPlayerJumpD;


if(oPlayer.isIntangible)
{
	temp++;
	
	if(temp/8 == 1)
	{
		shader_set(shWhite)
		draw_self();
		shader_reset();
		
		temp = 0;
	}
}
else temp = 0;

#region Respawn
/*
if(oPlayer.state = states.RESPAWN)
{
	r = 16;
	pulse = Wave(-5,5,2,0);
	draw_circle_color(x, y, r + pulse, c_white, c_white, false);
}
else
{
	pulse -= 0.5;
	r -= 0.3;
}
*/

#endregion
