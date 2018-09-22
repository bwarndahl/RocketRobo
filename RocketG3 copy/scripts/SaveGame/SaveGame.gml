/// @description Save
// You can write your code in this editor

//Root list
var _root_list = ds_list_create();

//For every instance, create map
with (oSaveMe)
{
	var _map = ds_map_create();
	ds_list_add(_root_list,_map);
	ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1);
	
	var _obj = object_get_name(object_index);
	
	//IMPORTANT
	ds_map_add(_map,"obj",_obj);
	ds_map_add(_map,"metal",metal);
	ds_map_add(_map,"seconds",seconds);
	
	//ds_map_add(_map,"obj", _obj);
	//ds_map_add(_map,"y",y);
	//ds_map_add(_map,"x",x);
	

}

//Wrap the root list in a Map. 
var _wrapper = ds_map_create(); 
ds_map_add_list(_wrapper,"ROOT", _root_list);

//Save all of this to a string 
var _string = json_encode(_wrapper);

if(global.file == 1)
{
	SaveStringToFile("savedgame1.sav",_string);
}

if(global.file == 2)
{
	SaveStringToFile("savedgame2.sav",_string);
}

if(global.file == 3)
{
	SaveStringToFile("savedgame3.sav",_string);
}

//Delete Data
ds_map_destroy(_wrapper); 

show_debug_message("Game saved"); 