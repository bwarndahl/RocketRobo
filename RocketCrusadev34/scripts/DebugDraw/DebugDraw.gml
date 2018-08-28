//// @param float Number to be displayed

a = argument0;

if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 40, string_hash_to_newline(string(a)));