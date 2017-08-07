/// @description RoomTransition(targetRoom)
/// @param targetRoom

// Example: RoomTransition(rm_gameOver, c_red);

var targetRoom = argument0;

if (!instance_exists(obj_roomTransition)) 
{
    var inst_roomTransition = instance_create_depth(0,0,0,obj_roomTransition);
    inst_roomTransition.targetRoom = targetRoom;
	
	if (argument_count > 1) 
	{
		inst_roomTransition.fadeColor = argument[1];
	}
}