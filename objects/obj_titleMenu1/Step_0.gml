var keyUp     = keyboard_check_pressed(vk_up)   or keyboard_check_pressed(ord("W"));
var keyDown   = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
var keyAction = keyboard_check_pressed(vk_enter);

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
			RoomTransition(rm_game);
			break;
			
		//tutorial
		case 1:
			RoomTransition(rm_tutorial);
			break;
			
		//exit
		case 2:
			game_end();
			break;
			
		default:
			break;
	}
}