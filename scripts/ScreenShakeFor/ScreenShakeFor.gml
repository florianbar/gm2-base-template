/// @description ScreenShakeFor(duration,offset)
/// @param duration
/// @param offset

if (!instance_exists(obj_screenShake)) {
	var inst_screenShake = instance_create_depth(0,0,0,obj_screenShake);
	
	inst_screenShake.duration = Seconds(argument[0]);
	
	if (argument_count > 1) {
		inst_screenShake.offset = argument[1];
	}
}