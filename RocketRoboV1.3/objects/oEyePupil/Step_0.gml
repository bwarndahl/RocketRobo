/// @desc Position

if (x = parent.x) && (y = parent.y) || (parent.flash > 0)
{
	image_index = 2;
}
else if(image_index != 1) image_index = 0;

if (alarm[0] = -1) alarm[0] = 3

var offset = 4;
if (0 <= parent.angle && parent.angle <= 85) || (275 <= parent.angle && parent.angle <= 360) xoffset = xoffset + offset; // Right
if (105 <= parent.angle && parent.angle <= 255) xoffset = xoffset - offset; // Left
if (20 <= parent.angle && parent.angle <= 160) yoffset = yoffset - offset; // Up
if (200 <= parent.angle && parent.angle <= 340) yoffset = yoffset + offset; // Down

x = parent.x + xoffset;
y = parent.y + yoffset;