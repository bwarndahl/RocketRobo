/// @desc Angle

xoffset = 0;
yoffset = 0;

var offset = 4;
if (0 <= oEye.angle && oEye.angle <= 45) || (315 <= oEye.angle && oEye.angle <= 360) xoffset = xoffset + offset;
if (135 <= oEye.angle && oEye.angle <= 225) xoffset = xoffset - offset;
if (20 <= oEye.angle && oEye.angle <= 160) yoffset = yoffset - offset;
if (200 <= oEye.angle && oEye.angle <= 340) yoffset = yoffset + offset;
