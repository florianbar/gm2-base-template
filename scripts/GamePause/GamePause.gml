/// @description GamePause(stayActive)
/// @param stayActive

// Example: GamePause([ctrl_main, ctrl_game]);
 
var stayActive = argument0;

if (!instance_exists(obj_gamePause))
{
    var inst_gamePause = instance_create_depth(0,0,0,obj_gamePause);
	inst_gamePause.stayActive = stayActive;
}