/// @description Init screen shake

if (!hasInit) {
	hasInit = true;
	
	alarm[0] = shakeSpeed;
	
	if (!is_undefined(duration)) {
		alarm[1] = duration;
	}
}