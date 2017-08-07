/// @description DataGet(key)
/// @param key

// Example: DataGet("highscore");

var key = argument0;

if (file_exists(global.iniPath))
{
	var data = ds_map_secure_load(global.iniPath);
    return data[? key];
}

return undefined;