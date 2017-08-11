///Step

if (!hasInit)
{
    hasInit = true;
    alarm[0] = duration;
    
    //create sprite from screen
    freezeSprite = sprite_create_from_surface(
        application_surface,0,0,
        surface_get_width(application_surface), 
        surface_get_height(application_surface), 
        false, false, 0, 0
    );
    
    //deactivate all objects expect for this
    instance_deactivate_all(true);
	
	for (var i = 0; i < array_length_1d(stayActive); i++)
	{
		instance_activate_object(stayActive[i]);
	}
}