/// @description GameResume()

// Example: GameResume();

if (instance_exists(obj_gamePause))
{
    instance_destroy(obj_gamePause);
}