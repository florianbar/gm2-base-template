/// @description DataGetAll()

if (file_exists(global.iniPath))
{
    return ds_map_secure_load(global.iniPath);
}

return undefined;