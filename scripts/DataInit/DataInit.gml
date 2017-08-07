/// @description DataInit()

if (!file_exists(global.iniPath))
{	
	var data = DataMap();   
    var save = ds_map_secure_save(data, global.iniPath);
    ds_map_destroy(save);
}