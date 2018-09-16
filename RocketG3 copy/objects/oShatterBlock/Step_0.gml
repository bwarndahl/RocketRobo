/// @description Start to shatter on contact with player
if (!shatter)
    if (place_meeting(x - 1, y, oPlayer) ||
        place_meeting(x + 1, y, oPlayer) ||
        place_meeting(x, y - 1, oPlayer) ||
        place_meeting(x, y + 1, oPlayer))
            shatter = true;
         
// Fade + destroy   
if (shatter)
    image_speed = 1;
        


