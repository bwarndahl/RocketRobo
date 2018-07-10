if(hasControl){
// Input //////////////////////////////////////////////////////////////////////

kLeft        = keyboard_check(ord("A"));
kRight       = keyboard_check(ord("D"));
kUp          = keyboard_check(ord("W"));
kDown        = keyboard_check(ord("S"));
kJump        = keyboard_check_pressed(vk_space);
kJumpRelease = keyboard_check_released(vk_space);
kClick       = mouse_check_button_pressed(mb_left);

angle = point_direction(x, y, mouse_x, mouse_y)

///////////////////////////////////////////////////////////////////////////////

// Reset Body Part Coords
// oPlayerHead.x = x
// oPlayerHead.y = y - 2

// Which form of accel/fric to apply
if (onGround) {
	grounded = 5;
	dJump = true;
    tempAccel = groundAccel;
    tempFric  = groundFric;
} else {
	grounded = 0;
    tempAccel = airAccel;
    tempFric  = airFric;
}

// Stick to wall //////////////////////////////////////////////////////////////
if ((!cRight && !cLeft) || onGround) {
    canStick = true;
    sticking = false;
}   

// Cling to wall
if (((kRight && cLeft) || (kLeft && cRight)) && canStick && !onGround) {
    alarm[0] = clingTime;
    sticking = true; 
    canStick = false;       
}
///////////////////////////////////////////////////////////////////////////////

// Gravity ////////////////////////////////////////////////////////////////////
if (!onGround) {
    states = states.JUMP;
    if ((cLeft || cRight) && v >= 0) {
        // Wall slide
        v = Approach(v, maxV, gravSlide);
    } else {
        
        // Fall normally
        if (v < 0) v = Approach(v, maxV, gravRise);
        else v = Approach(v, maxV, gravFall);
    }
}
///////////////////////////////////////////////////////////////////////////////

// Left 
if (kLeft && !kRight && !sticking) {
    facing = LEFT;

    // Apply acceleration left
    if (h > 0)
        h = Approach(h, 0, tempFric);   
    h = Approach(h, -maxH, tempAccel);
        
    if (onGround /*&& !cLeft*/)
        states = states.RUN;
    else {
        if (onGround)
            states = states.IDLE;
    }
}

// Right 
if (kRight && !kLeft && !sticking) {
    facing = RIGHT;

    // Apply acceleration right
    if (h < 0)
        h = Approach(h, 0, tempFric);   
    h = Approach(h, maxH, tempAccel);
        
    if (onGround /*&& !cRight*/)
        states = states.RUN;
    else {
        if (onGround)
            states = states.IDLE;
    }
}

// Friction
if (!kRight && !kLeft)
    h = Approach(h, 0, tempFric);

if (onGround && h == 0)
    states = states.IDLE;    
       
// Wall jump
if (kJump && cLeft && !onGround) {
    // Stretch sprite
    xscale = 0.66;
    yscale = 1.33;     
    
    // Particles
    var i;
    for (i = 0; i < 4; ++i)
        with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
            direction = random_range(-45, 45);        
    
    // Wall jump is different when pushing off/towards the wall        
    if (kLeft) {
        v = -jumpHeight * 1.1;
        h = jumpHeight * .75  * 1.2;
    } else {
        v = -jumpHeight * 1.1;
        h = maxH;
    }  
}

if (kJump && cRight && !onGround) {
    // Stretch sprite
    xscale = 0.66;
    yscale = 1.33;              
     
    // Particles
    var i;
    for (i = 0; i < 4; ++i)
        with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
            direction = 180 + random_range(-45, 45);     
       
    // Wall jump is different when pushing off/towards the wall  
    if (kRight) {
        v = -jumpHeight * 1.1;
        h = -jumpHeight * .75 * 1.2;
    } else {
        v = -jumpHeight * 1.1;
        h = -maxH;
    }  
}
  
// Jump
if (kJump && onGround) {
    if (onGround || (!cRight && !cLeft)) {
        // Stretch sprite 
        xscale = 0.66;
        yscale = 1.33;
        
        // Particles
        var i;
        for (i = 0; i < 4; ++i)
            with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
                direction = 90 + random_range(-45, 45);        
        
        v = v - jumpHeight;
        states = states.JUMP;
    }
} else {
    // Variable jump height
    if (kJumpRelease) {
        if (v < 0 && v >= -jumpHeight)
            v *= 0.25; 
    }
}

// Double Jump
if (kJump && dJump = true) {
    if (!onGround && (!cRight && !cLeft)) {
        // Stretch sprite 
        xscale = 0.66;
        yscale = 1.33;
        
        // Particles
        var i;
        for (i = 0; i < 4; ++i)
            with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
                direction = 90 + random_range(-45, 45);        
        
		if (sign(v) = 1) v = 0;
		
		if (kUp || kRight || kDown || kLeft)
		{
			if (kUp) v = v - djumpHeight;	
			if (kRight) h = h + djumpHeight;	
			if (kDown) v = v + djumpHeight;	
			if (kLeft) h = h - djumpHeight;
		}
		else
		{
			v = v - djumpHeight;
		}
		
        dJump = false;
		
    }
}


/* */
if (states == states.RUN)
    if (random(100) > 80)
        with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
            direction = 90 + random_range(-45, 45); 

// Face mouse position
if (mouse_x >= x)
    facing = 1;
else
    facing = -1; 

// Swap facing on walls
if (states == states.JUMP) {
    if (cLeft)
        facing = RIGHT;
    if (cRight)
        facing = LEFT;
}

 
// Adjust scaling after squash + stretch
xscale = Approach(xscale, 1, 0.05);
yscale = Approach(yscale, 1, 0.05);

}



if (angle > 60 && 120 > angle)
{
	look = looking.UP;
}
	
else if (angle > 30 && 60 > angle)
{
	look = looking.UPRIGHT;
}
	
else if (angle > 0 && 30 > angle || angle > 330 && 360 > angle)
{
	look = looking.RIGHT;
}
	
else if (angle > 300 && 330 > angle)
{
	look = looking.DOWNRIGHT;
}
	
else if (angle > 240 && 300 > angle)
{
	look = looking.DOWN;
}
	
else if (angle > 210 && 240 > angle)
{
	look = looking.DOWNLEFT;
}
	
else if (angle > 150 && 210 > angle)
{
	look = looking.LEFT;
}
	
else if (angle > 120 && 150 > angle)
{
	look = looking.UPLEFT;
}



/* */
/*  */
