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
	respawnx = x;
	respawny = y - 2;
	firstGround = true;
} else {
	grounded = 0;
    tempAccel = airAccel;
    tempFric  = airFric;
	if(firstGround = false)
	{
		respawnx = x;
		respawny = y;
		firstGround = true;	
	}
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
gravRise    = (0.6 * grav)  * m;
gravFall    = (0.6 * grav)  * m;
gravSlide   = (0.25 * grav) * m;

if (isSolid)
{
	if (!onGround)
	{
	    state= states.JUMP;
	    if ((cLeft || cRight) && v >= 0) {
	        // Wall slide
	        v = Approach(v, maxV, gravSlide);
			} else {
        
	        // Fall normally
	        if (v < 0) v = Approach(v, maxV, gravRise);
	        else v = Approach(v, maxV, gravFall);
	    }
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
        state = states.RUN;
    else {
        if (onGround)
            state= states.IDLE;
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
        state = states.RUN;
    else {
        if (onGround)
            state = states.IDLE;
    }
}

// Friction
if (!kRight && !kLeft)
    h = Approach(h, 0, tempFric);

if (onGround && h == 0)
    state = states.IDLE;    
       
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
        state = states.JUMP;
    }
} else {
    // Variable jump height
    if (kJumpRelease) {
        if (v < 0 && v >= -jumpHeight)
            v *= 0.5; 
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
			if (kUp)
			{
				if (sign(v) = 1) v = 0; 
				v = v - djumpHeight;
			}
			if (kRight)
			{
				if (sign(h) = -1) h = 0;
				h = h + djumpHeight;
			}
			if (kDown)
			{
				if (sign(v) = -1) v = 0;
				v = v + djumpHeight;	
			}
			if (kLeft)
			{
				if (sign(h) = 1) h = 0;
				h = h - djumpHeight;
			}
		}
		else
		{
			v = v - djumpHeight;
		}
		
        dJump = false;
		
    }
}


/* */
if (state == states.RUN)
    if (random(100) > 80)
        with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
            direction = 90 + random_range(-45, 45); 



 
// Adjust scaling after squash + stretch
xscale = Approach(xscale, 1, 0.05);
if(grav = 1) yscale = Approach(yscale, 1, 0.05);

}


#region Looking Code
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
#endregion

x = clamp(x, 0 + 12, room_width);


if(oPlayer.y > room_height + 32) state = states.RESPAWN;
if (state = states.RESPAWN)
{
	isSolid = false;
	hasControl = false;
	respawnDist = point_distance(x,y,respawnx,respawny)
	
	xTo = respawnx;
	yTo = respawny;
	
	//if (respawnDist > 5)
	//{
		x += (xTo - x) / 10; //(respawnDist / 8);
		y += (yTo - y) / 10; //(respawnDist / 8);
	//}
	
	count += 1;
	if (count >= 3)
	{
		with(instance_create(x,y,oTrail))
		{
			image_xscale *= 2;
			image_yscale *= 2;
		}
		count = 0;
	}
	
	/*
	x = Approach(x,respawnx,5)
	y = Approach(y,respawny,5)
	*/
	
	if (respawnDist < 0.5)
	{
		state = states.IDLE;
		h = 0;
		v = 0;
	}
}
else
{
	isSolid = true;
	hasControl = true;
}

global.xPos = x;
global.yPos = y;