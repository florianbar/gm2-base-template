/// @description GamePause()

if (!instance_exists(obj_menuPause))
{
	instance_create_depth(0,0,global.depthGUI,obj_menuPause);
	GameFreeze([obj_menuPause]);
}