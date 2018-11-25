/// @desc ?
var xx, yy;
xx = lengthdir_x(distan,direct);
yy = lengthdir_y(distan,direct);

direct = point_direction(x + xx,y + yy,oPlayer.x,oPlayer.y);
x += lengthdir_x(distan, point_direction(x,y,oPlayer.x,oPlayer.y));
y += lengthdir_y(distan, point_direction(x,y,oPlayer.x,oPlayer.y));

x += xx;
y += yy;

if(place_meeting(x,y,oPlayer)) || (!instance_exists(parent)) instance_destroy();