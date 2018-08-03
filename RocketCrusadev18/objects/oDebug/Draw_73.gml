/// @description Debug Text
draw_set_color(c_white);

draw_set_halign(fa_center);

draw_set_font(fontAng)

if(instance_exists(oPlayer))
{
	 DebugDraw(camera_get_view_x(view_camera[0]));
	//DebugDraw(oTransition2.diag);
	//DebugDraw(window_mouse_get_y());
	//DebugDraw(window_get_height());
}

	//if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 140, string_hash_to_newline(string(oCamera.xMove)));
	//if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 50, string_hash_to_newline(string(oPlayer.respawnx)));
	//if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 100, string_hash_to_newline(string(oPlayer.respawny)));
	//if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 150, string_hash_to_newline(string(oPlayer.x)));
	//if(instance_exists(oPlayerBody)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 200, string_hash_to_newline(string(oPlayerBody.r)));
	//if(instance_exists(oKey)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 150, string_hash_to_newline(string(oKey.yTo)));
	//draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 56, string_hash_to_newline(string(room_speed)));
	
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 70, string_hash_to_newline(string(instance_exists(oCamera))));
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 100, string_hash_to_newline(string(instance_exists(oTransition))));
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 120, string_hash_to_newline(string(instance_exists(oPlayer))));