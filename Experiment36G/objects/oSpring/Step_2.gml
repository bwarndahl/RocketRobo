// Launch player
if (place_meeting(x, y - 1, oPlayer)) {
    // Shake screen
    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }
	
	image_speed = 0.5;

    // HIGH JUMP!
    with (oPlayer)
        v = -jumpHeight * 2;
    
    // Particles
    var i;
    for (i = 0; i < 8; ++i)
        with (instance_create(x + 8 + random_range(-8, 8), y, oParticle))
            direction = 90 + random_range(-45, 45);
}

// Launch push blocks (copy + paste)
if (place_meeting(x, y - 1, oPushBlock)) {
    // Shake screen
    with (oCamera) {
        alarm[0] = 8;
        screenShake = true;
    }

    // HIGH JUMP!
    with (instance_place(x, y - 1, oPushBlock)) { // Target specific push block
        v = -14;
        if (place_meeting(x, y - 1, oPlayer)) {
            oPlayer.y -= 14;
        }
    }
    
    // Particles
    var i;
    for (i = 0; i < 8; ++i)
        with (instance_create(x + 8 + random_range(-8, 8), y, oParticle))
            direction = 90 + random_range(-45, 45);
}

