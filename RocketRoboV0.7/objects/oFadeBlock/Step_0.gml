// Start to fade on contact with player
if (!fade)
    if (place_meeting(x - 1, y, oPlayer) ||
        place_meeting(x + 1, y, oPlayer) ||
        place_meeting(x, y - 1, oPlayer) ||
        place_meeting(x, y + 1, oPlayer))
            fade = true;
         
// Fade + destroy   
if (fade)
    image_alpha -= 0.1;   
if (image_alpha <= 0)
    instance_destroy();
        


