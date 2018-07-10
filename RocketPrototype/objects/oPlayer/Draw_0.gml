// @desc Draw sprite depending on player state.

switch (states) {
    case states.IDLE: 
        image_speed = 0.1;
        sprite_index = sPlayerIdle;
    break;
    
    case states.RUN: 
        image_speed = 0.5; 
        sprite_index = sPlayerRun;
    break;
    
    case states.JUMP:
        // Mid jump   
        if (!(place_meeting(x, y + 2, oParSolid) && v != 0) && v >= -1.0 && v <= 1.0) {  
            sprite_index = sPlayerJumpM;  
       } else { 
            // Rise + fall
            if (v <= 0)  
                sprite_index = sPlayerJumpU;  
            else
                sprite_index = sPlayerJumpD;
        }
         
        // When against a wall   
        if (cRight || cLeft)
            sprite_index = sPlayerSlide;  
    break;
}

// Line to mouse
draw_set_alpha(0.25);
draw_line_width(x, y, mouse_x, mouse_y, 4);
draw_set_alpha(1);

// Draw gun
//if (gun != -1)
    //draw_sprite_ext(sGun, gun, x + lengthdir_x(4, point_direction(x, y, mouse_x, mouse_y)), y + 4 + lengthdir_y(4, point_direction(x, y, mouse_x, mouse_y)), xscale, facing, point_direction(x, y, mouse_x, mouse_y), c_white, 1);

// Draw cursor
if(instance_exists(oGauntletR)) draw_sprite_ext(sCursor, -1, mouse_x, mouse_y, 1, 1, point_direction(x, y, mouse_x, mouse_y) + 45, c_white, 1);
else draw_sprite_ext(sCursorClick, -1, mouse_x, mouse_y, 1, 1, point_direction(x, y, mouse_x, mouse_y) + 45, c_white, 1);

// Draw player
if (onGround)
    draw_sprite_ext(sprite_index, image_index, x, y + (16 - 16 * yscale) * 0.25, facing * xscale, yscale, 0, c_white, image_alpha);    
else
    draw_sprite_ext(sprite_index, image_index, x, y, facing * xscale, yscale, 0, c_white, image_alpha);

