/// @description Pause Menu

if(global.pause == true)
{
	//sprite_delete(global.PauseScreenShot);	
	draw_sprite(global.PauseScreenShot,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));	
}

if(instance_exists(oTransition))
{
	if(room != rMenu && oTransition.mode == TRANSITION.NONE)
	{
		if(global.pause == false && keyboard_check_released(ord("P")))
		{
			var width = surface_get_width(application_surface),
			    height = surface_get_height(application_surface);
				global.PauseScreenShot = sprite_create_from_surface(application_surface, 0, 0, width, height, false, false, 0, 0);
			
			global.pause = true;
			oGame.gameState = gameStates.PAUSE;
			instance_deactivate_all(true);
		
			//Important Managers
			instance_activate_object(oCamera);
			instance_activate_object(oTransition);
			instance_activate_object(oDebug);
			instance_activate_object(oGame);
			instance_create_depth(camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])/2,-999,oRestartLevel);
			instance_create_depth(mouse_x,mouse_y,-1000,oMouse);
		}
		else if(global.pause == true && keyboard_check_released(ord("P")))
		{
			instance_activate_all();
		
			if(instance_exists(oRestartLevel))
			{
				instance_destroy(oRestartLevel);	
			}
		
			if(instance_exists(oMouse))
			{
				instance_destroy(oMouse);
			}
			global.pause = false;
			oGame.gameState = gameStates.PLAY;
		}
	}
}
