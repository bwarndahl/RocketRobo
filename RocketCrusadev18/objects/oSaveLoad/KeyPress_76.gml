/// @description Load

with (oSaveMe) instance_destroy();

if (file_exists("savedgame.sav"))
{
	var _wrapper = LoadJSONFromFile("savedgame.sav");
	var _list = _wrapper[? "ROOT"];
	
	for(var i = 0; i < ds_list_size(_list); i++)
	{
		var _map = _list[| i];
		
		var _obj = _map[? "obj"];
		
		with (instance_create_layer(0,0,layer,asset_get_index(_obj)))
		{
			metal = _map[? "metal"];
		}
	}
	ds_map_destroy(_wrapper);
	show_debug_message("Game loaded"); 
}
else 
{
	show_debug_message("Save File Not Found");
}