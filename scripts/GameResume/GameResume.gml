/// @description GameResume()

if (instance_exists(obj_pauseMenu))
{
	instance_destroy(obj_pauseMenu);
	GameUnfreeze();
}