/// @description Intro

show_debug_message(string(image_index));
show_debug_message(string(image_number-1));

if ((image_index > image_number - 1 ) || (keyboard_check_pressed(vk_anykey)) || (mouse_check_button_released(mb_any)))
{
	instance_create(352,192,oPlay);
	instance_create(320,256,oOptions);
	instance_create(320,352,oQuit);
	instance_create(mouse_x,mouse_y,oMouse);
	instance_destroy();	
}