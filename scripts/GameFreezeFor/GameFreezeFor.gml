/// @description GameFreezeFor(seconds, stayActive)
/// @param seconds
/// @param stayActive

// Example: GameFreezeFor(1, [ctrl_main, ctrl_game]);
 
var duration = Seconds(argument0);
var stayActive = argument1;

if (!instance_exists(obj_gameFreeze))
{
    var inst_gamePause = instance_create_depth(0,0,-100,obj_gameFreeze);
    inst_gamePause.duration = duration;
	inst_gamePause.stayActive = stayActive;
}