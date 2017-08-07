/// @description GameFreeze(stayActive)
/// @param stayActive

// Example: GameFreeze([ctrl_main, ctrl_game]);
 
var stayActive = argument0;

if (!instance_exists(obj_gameFreeze))
{
    var inst_gamePause = instance_create_depth(0,0,0,obj_gameFreeze);
	inst_gamePause.stayActive = stayActive;
}