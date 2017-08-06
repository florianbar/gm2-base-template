/// @description ScreenShakeStop()

if (instance_exists(obj_screenShake)) {
	with (obj_screenShake) instance_destroy();
}