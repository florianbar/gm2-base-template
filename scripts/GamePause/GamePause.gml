/// @description GamePause()

if (!instance_exists(obj_pauseMenu))
{
	instance_create_depth(0,0,-100,obj_pauseMenu);
	GameFreeze([obj_pauseMenu]);
}