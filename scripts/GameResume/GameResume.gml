/// @description GameResume()

if (instance_exists(obj_menuPause))
{
	instance_destroy(obj_menuPause);
	GameUnfreeze();
}