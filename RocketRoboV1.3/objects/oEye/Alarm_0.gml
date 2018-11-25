/// @description Delayed Movement

#region Direction
var h, v;
h = 0;
v = 0;

if (0 <= oEye.angle && oEye.angle <= 85) || (275 <= oEye.angle && oEye.angle <= 360) h += 1;
if (105 <= oEye.angle && oEye.angle <= 255) h -= 1;
if (20 <= oEye.angle && oEye.angle <= 160) v += 1;
if (200 <= oEye.angle && oEye.angle <= 340) v -= 1;

switch (h)
{
case (0):
	if(v = 0) dir = 0; // None
	else if(v = 1) dir = 90; // Up
	else if(v = -1) dir = 270; // Down
break;

case (1):
	if(v = 0) dir = 0; // Right
	else if(v = 1) dir = 45; // Up Right
	else if(v = -1) dir = 315; // Down Right
break;

case (-1):
	if(v = 0) dir = 180; // Left
	else if(v = 1) dir = 135; // Up Left
	else if(v = -1) dir = 225; // Down Left
break;
}

#endregion

move_delay = true;
if(eState = enemyStates.FOLLOW) if(alarm[1] = -1) alarm[1] = delay_time;