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
			state = "exit"
			break;
			
		//menu
		case 1:
			RoomTransition(rm_title);
			break;
			
		default:
			break;
	}
}

if (state == "enter")
{
	if (time < duration)
	{
		menuY = EaseOutElastic(time, startY, endY - startY, duration);
		time++;
	}
	else
	{
		state = "normal";
		time = 0;
	}
}
else if (state == "exit")
{
	if (time < duration)
	{
		menuY = EaseOutElastic(time, endY, startY - endY, duration);
		time++;
	}
	else
	{
		//resume game
		GameUnfreeze();
		instance_destroy();
	}
}
else if (state == "normal")
{
}