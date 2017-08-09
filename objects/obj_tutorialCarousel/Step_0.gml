var keyCancel = keyboard_check_pressed(vk_escape);
var keyAction = (
	keyboard_check_pressed(vk_enter) 
	or keyboard_check_pressed(vk_space)
);
var prev = keyboard_check_pressed(vk_left)  or keyboard_check_pressed(ord("A"));
var next = (
	keyboard_check_pressed(vk_right) 
	or keyboard_check_pressed(ord("D"))
	or keyAction
);

if (keyCancel)
{
	RoomTransition(rm_title);
}

if (keyAction)
{
	if (activeItem == array_length_1d(menuItems)-1)
	{
		RoomTransition(rm_title);
	}
}

if (prev) 
{
	if (activeItem != 0) 
	{
		activeItem--;
	}
} 
else if (next) 
{
	if (activeItem < array_length_1d(menuItems)-1) 
	{
		activeItem++;
	}
}