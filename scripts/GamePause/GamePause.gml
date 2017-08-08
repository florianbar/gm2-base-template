/// @description GamePause()

if (!instance_exists(obj_pauseMenu))
{
	instance_create_depth(0,0,global.depthGUI,obj_pauseMenu);
	GameFreeze([obj_pauseMenu]);
}