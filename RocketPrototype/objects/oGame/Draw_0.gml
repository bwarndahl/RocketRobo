/// @description Debug Text
draw_set_color(c_white);

draw_set_halign(fa_center);

draw_set_font(fontAng)

if(instance_exists(oPlayer))
{
	// if(instance_exists(oGauntletR)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 40, string_hash_to_newline(string(oGauntletR.targetx)));
	// if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 100, string_hash_to_newline(string(oPlayer.sprite_index)));
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 56, string_hash_to_newline(string(oTransition.tempy)));
	
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 70, string_hash_to_newline(string(instance_exists(oCamera))));
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 100, string_hash_to_newline(string(instance_exists(oTransition))));
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 120, string_hash_to_newline(string(instance_exists(oPlayer))));
}