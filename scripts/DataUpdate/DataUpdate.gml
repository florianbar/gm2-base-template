/// @description DataUpdate(key, value)
/// @param key
/// @param value

// Example: DataUpdate("highscore", 100);

var key = argument0;
var value = argument1;

if (file_exists(global.iniPath))
{
    data = ds_map_secure_load(global.iniPath);
    data[? key] = value;
    
    save = ds_map_secure_save(data, global.iniPath);
    ds_map_destroy(save);
}