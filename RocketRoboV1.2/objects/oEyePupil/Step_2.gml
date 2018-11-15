/// @desc Position
xoffset = 0;
yoffset = 0;

var offset = 4;
if (0 <= parent.angle && parent.angle <= 45) || (315 <= parent.angle && parent.angle <= 360) xoffset = xoffset + offset;
if (135 <= parent.angle && parent.angle <= 225) xoffset = xoffset - offset;
if (20 <= parent.angle && parent.angle <= 160) yoffset = yoffset - offset;
if (200 <= parent.angle && parent.angle <= 340) yoffset = yoffset + offset;

x = parent.x + xoffset;
y = parent.y + yoffset;

if(parent.eState = enemyStates.STUN)
{
	x = parent.x;
	y = parent.y
	
	image_index = 3;
}

if(!instance_exists(parent)) instance_destroy();