///DebugDraw(argument0);
///@arg object
///@arg variable
///@arg x
///@arg y

draw_set_font(FONT);

object = argument0;
variable = argument1;

if(argument_count >= 3)xx = argument2;
if(argument_count >= 4)yy = argument3;


if(instance_exists(object)) draw_text_color(xx, yy, string_hash_to_newline(string(variable)),c_white,c_white,c_white,c_white,1);