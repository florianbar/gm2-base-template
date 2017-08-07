/// @description GameUnfreeze()

// Example: GameUnfreeze();

if (instance_exists(obj_gameFreeze))
{
    instance_destroy(obj_gameFreeze);
}