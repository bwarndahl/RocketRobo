/// @description Debug Text
draw_set_color(c_white);

draw_set_halign(fa_center);

draw_set_font(fontAng)


if(instance_exists(oPlayer))
{
	//DebugDraw(view_w);
	DebugDraw(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0]));
	//DebugDraw(room_width);
	//DebugDraw(window_mouse_get_y());
	//DebugDraw(window_get_height());

}
/*
	//if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 340, string_hash_to_newline(string(oDisplayManager.height_resize)));
	//if(instance_exists(oDoor)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) + 15, __view_get( e__VW.YView, 0 ) + 40, string_hash_to_newline(string(oDoor.dstate)));
	if(instance_exists(oDisplayManager)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 250, string_hash_to_newline(string(view_w)));
	if(instance_exists(oDisplayManager)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 300, string_hash_to_newline(string(view_h)));
	if(instance_exists(oDisplayManager)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 350, string_hash_to_newline(string(oDisplayManager.zoom)));
	
	if(instance_exists(oTransition)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 450, string_hash_to_newline(string(oTransition.targetx)));
	if(instance_exists(oTransition)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 500, string_hash_to_newline(string(oTransition.targety)));
	
	if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 650, string_hash_to_newline(string(oPlayer.x)));
	if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 700, string_hash_to_newline(string(oPlayer.y)));
	//if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 100, string_hash_to_newline(string(oPlayer.respawny)));
	//if(instance_exists(oPlayer)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 150, string_hash_to_newline(string(oPlayer.x)));
	//if(instance_exists(oPlayerBody)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 200, string_hash_to_newline(string(oPlayerBody.r)));
	//if(instance_exists(oKey)) draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 150, string_hash_to_newline(string(oKey.yTo)));
	//draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 56, string_hash_to_newline(string(room_speed)));
	
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 70, string_hash_to_newline(string(instance_exists(oCamera))));
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 100, string_hash_to_newline(string(instance_exists(oTransition))));
	// draw_text(__view_get( e__VW.XView, 0 ) + 4 + (8 * 11) - 15, __view_get( e__VW.YView, 0 ) + 120, string_hash_to_newline(string(instance_exists(oPlayer))));
	
	
	
	//draw_circle_color(oPlayer.x, oPlayer.bbox_top, 6, c_red, c_red, false);
*/