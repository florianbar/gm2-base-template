/// @description GamePauseFor(seconds, stayActive)
/// @param seconds
/// @param stayActive

// Example: GamePauseFor(1, [ctrl_main, ctrl_game]);
 
var duration = Seconds(argument0);
var stayActive = argument1;

if (!instance_exists(obj_gamePause))
{
    var inst_gamePause = instance_create_depth(0,0,0,obj_gamePause);
    inst_gamePause.duration = duration;
	inst_gamePause.stayActive = stayActive;
}