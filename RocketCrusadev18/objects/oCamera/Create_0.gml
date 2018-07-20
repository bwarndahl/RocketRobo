/// @description Set Up Camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

xoffset = 0;
yoffset = 0;
facingoffset = 2;
groundoffset = 5;
angle = 0;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
