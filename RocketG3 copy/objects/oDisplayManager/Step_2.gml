/// @description Insert description here
// You can write your code in this editor
camera_set_view_size(view_camera[0],view_w,view_h);

var _round = view_w/surface_get_width(application_surface);
camera_set_view_pos(view_camera[0],round_n(view_x,_round),round_n(view_y,_round));


if(camera_get_view_x(view_camera[0]) < 0)
{
	camera_set_view_pos(view_camera[0],0,camera_get_view_y(view_camera[0]));	
}

if(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) > room_width)
{
	camera_set_view_pos(view_camera[0],room_width-camera_get_view_width(view_camera[0]),camera_get_view_y(view_camera[0]));	
}

if(camera_get_view_y(view_camera[0]) < 0)
{
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),0);
}

if(camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) > room_height)
{	
	camera_set_view_pos(view_camera[0],camera_get_view_x(view_camera[0]),room_height-camera_get_view_height(view_camera[0]),);	
}