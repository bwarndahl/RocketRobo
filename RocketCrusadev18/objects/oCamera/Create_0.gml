/// @description Set Up Camera
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

xoffset = 0;
yoffset = 0;
xMove = 0;
yMove = 0;
magnitude = 20;
//facingoffset = 2;
groundoffset = 5;
angle = 0;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;

count = 0;
xCam = camera_get_view_x(view_camera[0]);
yCam = camera_get_view_y(view_camera[0]);