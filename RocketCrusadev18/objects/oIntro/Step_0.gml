/// @description Intro

show_debug_message(string(image_index));
show_debug_message(string(image_number-1));

if (image_index > image_number - 1 )
{
	instance_destroy();	 
}
else if(keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
}
