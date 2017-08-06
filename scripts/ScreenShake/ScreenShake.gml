/// @description ScreenShake(duration)
/// @param offset

if (!instance_exists(obj_screenShake)) {
	var inst_screenShake = instance_create_depth(0,0,0,obj_screenShake);
	
	if (argument_count > 0) {
		inst_screenShake.offset = argument[0];
	}
}