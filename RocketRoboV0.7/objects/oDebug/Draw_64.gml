/// @description Debug Text

//draw_set_alpha(1);
//display_set_gui_size(camera_get_view_width(oCamera.cam),camera_get_view_height(oCamera.cam))
//draw_circle_color(64,64,64,c_red,c_red,false);

DebugDraw(oDisplayManager,display_get_width(),64,128);
DebugDraw(oDisplayManager,display_get_height(),64,160);

DebugDraw(oDisplayManager,display_get_gui_width(),64,224);
DebugDraw(oDisplayManager,display_get_gui_height(),64,256);

DebugDraw(oTransition,oTransition.percent,64,300);
DebugDraw(oTransition,oTransition.mode,128,300);