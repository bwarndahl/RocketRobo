// Movement speed
h = 0;
v = 0;

hasControl = true;

// Collision below
onGround = false;
grounded = 0;
firstGround = false;
dJump = false;

// Create Body Parts
if(!instance_exists(oPlayerHead)) instance_create_layer(x,y,"lPlayerHead",oPlayerHead);
if(!instance_exists(oPlayerBody)) instance_create_layer(x,y,"lPlayer",oPlayerBody);
if(!instance_exists(oGauntletR)) instance_create_layer(x,y,"lGauntletR",oGauntletR);
if(!instance_exists(oGauntletL)) instance_create_layer(x,y,"lGauntletL",oGauntletL);

// Input //////////////////////////////////////////////////////////////////////

kLeft        = 0;
kRight       = 0;
kUp          = 0;
kDown        = 0;
kJump        = 0;
kJumpRelease = 0;

// Camera (later versions) ////////////////////////////////////////////////////
if (!instance_exists(oCamera))
    instance_create(x, y, oCamera);
    
// Initial camera position  
//__view_set( e__VW.XView, 0, max(0, min(x - __view_get( e__VW.WPort, 0 ) * 0.5, room_width  - __view_get( e__VW.WPort, 0 ) )));
//__view_set( e__VW.YView, 0, max(0, min(y - __view_get( e__VW.HPort, 0 ) * 0.5 - 16, room_height - __view_get( e__VW.HPort, 0 ) )));

// Movement Vars //////////////////////////////////////////////////////////////

// Adjust THIS to adjust overall player speed
m = 0.5;

// Acceleration + friction
groundAccel = 1.0  * m;
groundFric  = 1.5  * m;
airAccel    = 0.75 * m;
airFric     = 0.10 * m;

// Max movement speeds
maxH        = 6  * m;
maxV        = 14  * m;

jumpHeight  = 7.0  * m;
djumpHeight = 7.0  * m;
grav        = 1.0  * m;
gravRise    = (0.6 * grav)  * m;
gravFall    = (0.6 * grav)  * m;
gravSlide   = (0.25 * grav) * m;

camDist     = 24.0; // (later versions)

// Frames prior to being able to push off of wall slide with arrow keys (doesn't affect wall jump)
clingTime   = 4.0  * m;
///////////////////////////////////////////////////////////////////////////////

// State Info /////////////////////////////////////////////////////////////////

enum states
{
	IDLE,
	RUN,
	JUMP,
	RESPAWN
}
state = states.IDLE;

respawnx = 0;
respawny = 0;
xTo = 0;
yTo = 0;
respawnDist = point_direction(x,y,respawnx,respawny);
count = 0;

enum looking
{
	UP,
	UPRIGHT,
	RIGHT,
	DOWNRIGHT,
	DOWN,
	DOWNLEFT,
	LEFT,
	UPLEFT
}

look = looking.UP;

// Facings
RIGHT =  1;
LEFT  = -1;

// Initialize properties
states  = states.IDLE;
facing = image_xscale; // Change xscale in editor to adjust initial facing

// For squash + stretch
xscale = 1;
yscale = 1;
///////////////////////////////////////////////////////////////////////////////

// Misc ///////////////////////////////////////////////////////////////////////

// Relative collision checks
cLeft  = 0;
cRight = 0;
cAbove = 0;
isSolid = true;

// Wall slide
canStick = true;
sticking = false;

///////////////////////////////////////////////////////////////////////////////
if (mouse_x > x)
    facing = 1;
else
    facing = -1;

canShoot = true;

///////////////////////////////////////////////////////////////////////////////

xscatter = 0//6;
yscatter = 1;
xdrift = 0;
ydrift = 5;

buff = 0;

///////////////////////////////////////////////////////////////////////////////

//Saves
metal = 0;