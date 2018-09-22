/// @description Load

if(global.file == 1)
{
	if (file_exists("savedgame1.sav"))
	{
		with (oSaveMe) instance_destroy();
		
		var _wrapper = LoadJSONFromFile("savedgame1.sav");
		var _list = _wrapper[? "ROOT"];
	
		for(var i = 0; i < ds_list_size(_list); i++)
		{
			var _map = _list[| i];
		
			var _obj = _map[? "obj"];
		
			with (instance_create(0,0,asset_get_index(_obj)))
			{
				metal = _map[? "metal"];
				seconds = _map[? "seconds"];
			}
		}
		
		ds_map_destroy(_wrapper);
		show_debug_message("Game loaded"); 
	}
	else 
	{
		show_debug_message("Save File Not Found");
	}
}

if(global.file == 2)
{
	if (file_exists("savedgame2.sav"))
	{
		with (oSaveMe) instance_destroy();
		var _wrapper = LoadJSONFromFile("savedgame2.sav");
		var _list = _wrapper[? "ROOT"];
	
		for(var i = 0; i < ds_list_size(_list); i++)
		{
			var _map = _list[| i];
		
			var _obj = _map[? "obj"];
		
			with (instance_create(0,0,asset_get_index(_obj)))
			{
				metal = _map[? "metal"];
				seconds = _map[? "seconds"];
			}
		}
		ds_map_destroy(_wrapper);
		show_debug_message("Game loaded"); 
	}
	else 
	{
		show_debug_message("Save File Not Found");
	}
}

if(global.file == 3)
{
	if (file_exists("savedgame3.sav"))
	{
		with (oSaveMe) instance_destroy();
		var _wrapper = LoadJSONFromFile("savedgame3.sav");
		var _list = _wrapper[? "ROOT"];
	
		for(var i = 0; i < ds_list_size(_list); i++)
		{
			var _map = _list[| i];
		
			var _obj = _map[? "obj"];
		
			with (instance_create(0,0,asset_get_index(_obj)))
			{
				metal = _map[? "metal"];
				seconds = _map[? "seconds"];
			}
		}
		ds_map_destroy(_wrapper);
		show_debug_message("Game loaded"); 
	}
	else 
	{
		show_debug_message("Save File Not Found");
	}
}