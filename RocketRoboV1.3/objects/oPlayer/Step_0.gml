/// @desc Controls, Movement, & States
if(oTransition.mode != TRANS_MODE.OFF) || (oTimer.tState = timerStates.COUNTDOWN)
{
	hasControl = false;
	trans_off = true;
}
else
{
	if(trans_off) hasControl = true;
	trans_off = false;
}

angle = point_direction(x, y, mouse_x, mouse_y);

dTrack = dJump; // Track whether double jump has changed

// Which form of accel/fric to apply
if (onGround) {
	ffall = false;
	canJump = 10;
	grounded = 5;
	dJump = true;
    tempAccel = groundAccel;
    tempFric  = groundFric;
	respawnx = x;
	respawny = y - 2;
} else {
	if (canJump > 0) canJump--
	grounded = 0;
    tempAccel = airAccel;
    tempFric  = airFric;
}

#region Wall Cling
// Stick to wall 
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
#endregion

if(hasControl)
{
#region Run
// Left 
if (kLeft && !kRight && !sticking)
{
    facing = LEFT;

    // Apply acceleration left
    //if (h > 0) h = Approach(h, 0, tempFric);  
	
    if(h > -runSpd) && (!onGround) h -= tempAccel;
	else if(onGround) h = Approach(h, -runSpd, tempAccel);
        
    if (onGround) state = states.RUN;
    else if (onGround) state = states.IDLE;
}

// Right 
if (kRight && !kLeft && !sticking)
{
    facing = RIGHT;

    // Apply acceleration right
   // if (h < 0) h = Approach(h, 0, tempFric);
	
	if(h < runSpd) && (!onGround) h += tempAccel;
	else if(onGround) h = Approach(h, runSpd, tempAccel);
        
    if (onGround) state = states.RUN;
    else if (onGround) state = states.IDLE;
}

if (onGround && h == 0) state = states.IDLE;
#endregion

#region Wall Jump
if (kJump && cLeft && !onGround) {
	ffall = false;
    // Stretch sprite
	/*
    xscale = 0.66;
    yscale = 1.33;     
	*/
    
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
		h = walljumpHeight;
	}
		
	/*
    } else if (kRight) {
        v = -jumpHeight * 1.1;
        h = maxH;
    } else {
		v = -jumpHeight * 1.1;
		h = runSpd;
	}
	*/
}

if (kJump && cRight && !onGround) {
	ffall = false;
    // Stretch sprite
	/*
    xscale = 0.66;
    yscale = 1.33;              
    */
	 
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
		h = -walljumpHeight;
	}
		
	/*
    } else if (kLeft) {
        v = -jumpHeight * 1.1;
        h = -maxH;
    } else {
		v = -djumpHeight * 1.1;
		h = -runSpd;
	}
	*/
}
#endregion

#region Jump
if (kJump) && (canJump > 0) {
	canJump = 0;
	ffall = false;
    if (onGround || (!cRight && !cLeft)) {
        // Stretch sprite 
		/*
        xscale = 0.66;
        yscale = 1.33;
		*/
        
        // Particles
        var i;
        for (i = 0; i < 4; ++i)
            with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
                direction = 90 + random_range(-45, 45);        
        
		audio_play_sound(sfxJump,10,false);
		
        v = v - jumpHeight;
        state = states.JUMP;
    }
} else {
    //Variable jump height
    
	if (kJumpRelease) && (dJump = true) {
        if (v < 0 && v >= -jumpHeight)
            v *= 0.5; 
    }
	
	
	if(v < 0) && (!kJumpHeld) vsp = max(v,(jumpHeight / 4))
}
#endregion

#region Double Jump
if (kJump && dJump = true) {
	ffall = false;
    if (!onGround && (!cRight && !cLeft)) {
        // StretchStretch sprite 
		/*
        xscale = 0.66;
        yscale = 1.33;
		*/
        
        // Particles
        var i;
        for (i = 0; i < 4; ++i)
            with (instance_create(x + random_range(-8, 8), bbox_bottom, oParticle))
                direction = 90 + random_range(-45, 45);  
		
		audio_play_sound(sfxJetpack,10,false);
        
		if (sign(v) = 1) v = 0;
		
		v /= 2;
		h /= 2;
		
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
		
		#region Thrust Direction
		instance_create_layer(x,y,"lEffects",oThrust)
		
		if (kUp) && (!kRight) && (!kDown) && (!kLeft) 
			with(instance_nearest(x,y,oThrust))
			{
				direction = 270;
				speed = 3;
			}
			
		if (kUp) && (kRight) && (!kDown) && (!kLeft) 
			with(instance_nearest(x,y,oThrust))
			{
				direction = 225;
				speed = 3;
			}
			
		if (!kUp) && (kRight) && (!kDown) && (!kLeft) 
			with(instance_nearest(x,y,oThrust))
			{
				direction = 180;
				speed = 3;
			}
			
		if (!kUp) && (kRight) && (kDown) && (!kLeft) 
			with(instance_nearest(x,y,oThrust))
			{
				direction = 135;
				speed = 3;
			}
						
		if (!kUp) && (!kRight) && (kDown) && (!kLeft) 
			with(instance_nearest(x,y,oThrust))
			{
				direction = 90;
				speed = 3;
			}
						
		if (!kUp) && (!kRight) && (kDown) && (kLeft) 
			with(instance_nearest(x,y,oThrust))
			{
				direction = 45;
				speed = 3;
			}
						
		if (!kUp) && (!kRight) && (!kDown) && (kLeft) 
			with(instance_nearest(x,y,oThrust))
			{
				direction = 360;
				speed = 3;
			}
		if (!kUp) && (!kRight) && (!kDown) && (!kLeft) 
			with(instance_nearest(x,y,oThrust))
			{
				direction = 270;
				speed = 3;
			}
			
			
		#endregion
		
        dJump = false;
		dThrust = true; 
    }
}
if (dTrack != dJump) && (dJump) audio_play_sound(sfxSignal,2,false);
#endregion

/* */
if (state == states.RUN)
    if (random(100) > 80)
        with (instance_create(x + random_range(-8, 8), bbox_bottom - 2, oParticle))
            direction = 90 + random_range(-45, 45); 



 /*
// Adjust scaling after squash + stretch
xscale = Approach(xscale, 1, 0.05);
if(grav = 1) yscale = Approach(yscale, 1, 0.05);
*/

#region Rocket Run
if(kRun)
{
	if(kRight)
	{
		if(oGauntletR.Gstate = Gstates.RUN)
		{
			if(runSpd < 15) runSpd += 1;
		}
		
		if(h < 0) state = states.IDLE;
	}
	if(!onGround) state = states.IDLE;
}
if(runSpd != rrunSpd) && (oGauntletR.Gstate != Gstates.RUN) runSpd = Approach(runSpd,rrunSpd,1)
#endregion

#region Taunt
if(kTaunt) && (onGround) //&& (tauntCount == 0)
{
	state = states.TAUNT;
	tauntCount = 60;
}

} ///////////////////////////////////////////////  hasControl  //////////////////////////////////////////////////////////
else
{
	//h = 0;
	//v = 0;
}
#endregion

#region Grab
if(state = states.GRAB)
{
	hasControl = false;
	isSolid = false;
	isIntangible = true;
	
	grab_speed = point_distance(x,y,targetx,targety);
	grab_speed = clamp(grab_speed,6,max_grab_speed);
	
	var xx, yy, dir;
	dir		= point_direction(x,y,targetx,targety); 
	xx		= lengthdir_x(grab_speed,dir)
	yy		= lengthdir_y(grab_speed,dir)
	
	x += xx;
	y += yy;
	
	h = xx;
	v = yy;
	/*
	if(x = targetx) && (y = targety)
	{
		state = states.IDLE;
	}
	*/
	
	/*
	if(kJump)
	{
		state = states.IDLE;
	}
	*/
}
#endregion


// Friction
//if (!kRight && !kLeft)
h = Approach(h, 0, tempFric);

#region Gravity
if(kDownP) && (!onGround) && (hasControl)
{
	ffall = true;
	if (grav < 1) && (!instance_exists(oSpark)) instance_create_layer(x - (20 * sign(facing)),bbox_top - 16,"lEffects",oSpark);
}
if (ffall = true)
{
	if (grav != 1) grav += 0.1; //Fast fall
}
else
{
	if (grav != 0.5) grav -= 0.1;
}

gravRise    = (0.6 * grav)  * m;
gravFall    = (0.6 * grav)  * m;
gravSlide   = (0.25 * grav) * m;


if (isSolid)
{
	if (!onGround)
	{
	    state = states.JUMP;
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
#endregion

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


x = clamp(x, -40, room_width + 40);
y = clamp(y, -72, room_height + 36);


#region Taunt
if(tauntCount > 0) state = states.TAUNT;
if(state = states.TAUNT)
{
	h = 0;
	v = 0;
	
	hasControl = false;
	facing = RIGHT;
	
	if(tauntCount > -1) tauntCount--;
	if(tauntCount < 0)
	{
		hasControl = true;
		state =  states.IDLE;
	}
}
//if(tauntCount < 0) tauntcount--
#endregion

#region Damage

if(hit > 0) hit--;

if(hp <= 0)
{
	respawnx = xstart;
	respawny = ystart;
	state = states.RESPAWN;
	//hp = max_hp;
	
	if(temp == 0)
	{
		instance_create_layer(x,y,"lEffects",oExplosion);
		
		
		if(instance_exists(oGauntletR)) && (!instance_exists(oGauntletRD))
		{
			if(!oGauntletR.isActive)
			{
				with(instance_create_layer(oGauntletR.x,oGauntletR.y,"lGauntletR",oGauntletRD))
				{
					image_xscale = oGauntletR.image_xscale;
				}
			}
		}
		
		
		if(instance_exists(oGauntletL)) && (!instance_exists(oGauntletLD))
		{
			if(!oGauntletL.isActive)
			{
				with(instance_create_layer(oGauntletL.x,oGauntletL.y,"lGauntletL",oGauntletLD))
				{
					image_xscale = oGauntletL.image_xscale;
				}
			}
		}
		
		
		if(instance_exists(oPlayerHead)) && (!instance_exists(oPlayerHeadD))
		{
			with(instance_create_layer(oPlayerHead.x,oPlayerHead.y,"lPlayerHead",oPlayerHeadD))
			{
				image_xscale = oPlayerHead.image_xscale;
			}
		}
	}
	temp = 1;
}
else temp = 0;

#endregion

#region Respawn
if(oPlayer.y > room_height + 32) hp = 0;

if (state = states.RESPAWN)
{
	isSolid = false;
	hasControl = false;
	respawnDist = point_distance(x,y,respawnx,respawny)
	
	xTo = respawnx;
	yTo = respawny;
	

	x += (xTo - x) / 10; //(respawnDist / 8);
	y += (yTo - y) / 10; //(respawnDist / 8);
	
	
	if (respawnDist < 0.5)
	{
		state = states.IDLE;
		hasControl = true;
		isSolid = true;
		
		h = 0;
		v = 0;
		
		hp = max_hp;
	}
}
#endregion

/* */
/*  */
