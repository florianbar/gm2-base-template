var keyCancel = keyboard_check_pressed(vk_escape);
var keyUp     = keyboard_check_pressed(vk_up)    or keyboard_check_pressed(ord("W"));
var keyDown   = keyboard_check_pressed(vk_down)  or keyboard_check_pressed(ord("S"));
var keyAction = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);

if (keyUp) 
{
	if (activeItem == 0) {
		activeItem = array_length_1d(menuItems)-1;
	} else {
		activeItem--;
	}
} 
else if (keyDown) 
{
	if (activeItem == array_length_1d(menuItems)-1) {
		activeItem = 0;
	} else {
		activeItem++;
	}
}

if (keyAction) 
{
	switch (activeItem) {
		//Resume
		case 0:
			state = "leave";
			break;
			
		//Tutorial
		case 1:
			RoomTransition(rm_tutorial);
			break;
			
		//menu
		case 2:
			RoomTransition(rm_title);
			break;
			
		default:
			break;
	}
}

if (keyCancel) state = "leave";


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
else if (state == "leave")
{
	if (time < duration)
	{
		menuY = EaseIn(time, endY, startY - endY, duration);
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