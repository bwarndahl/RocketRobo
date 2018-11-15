/// @desc States & Variables
eState = enemyStates.FOLLOW;
frame_count = 0;
frame_delay = 10;

hp = 2;
spd = 5.5;
dir = 0;

isIntangible = false;

move_delay = false;
delay_time = 44;
stun_delay = 0;
shoot_delay = 0;

can_shoot = true;
bullet_speed = 8;

flash = 0;
flash_set = true;
angle = 0;

afterimage_count = 0;
afterimage_frame_count = 0;

image_speed = 0;

with(instance_create_layer(x,y,"lEyePupil",oEyePupil)) parent = other;

if(alarm[0] = -1) alarm[0] = delay_time;