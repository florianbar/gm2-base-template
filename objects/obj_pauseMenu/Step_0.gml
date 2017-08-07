var keyUp     = keyboard_check_released(vk_up)   or keyboard_check_released(ord("W"));
var keyDown   = keyboard_check_released(vk_down) or keyboard_check_released(ord("S"));
var keyAction = keyboard_check_released(vk_enter);

if (keyUp) {
	if (activeItem == 0) {
		activeItem = array_length_1d(menuItems)-1;
	} else {
		activeItem--;
	}
} else if (keyDown) {
	if (activeItem == array_length_1d(menuItems)-1) {
		activeItem = 0;
	} else {
		activeItem++;
	}
}

if (keyAction) {
	switch (activeItem) {
		//play
		case 0:
			GameResume();
			break;
			
		//menu
		case 1:
			RoomTransition(rm_title);
			break;
			
		default:
			break;
	}
}