/// @description DataReset()

// Used to reset the ini file

var data = ds_map_create();
data[? "highscore"] = 0;
    
var save = ds_map_secure_save(data, global.iniPath);
ds_map_destroy(save);