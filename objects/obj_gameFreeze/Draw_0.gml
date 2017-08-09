/// @description Draw sprite to screen 

if (!is_undefined(pauseSprite))
{
	draw_sprite_stretched(
	    pauseSprite, 
		0, 
		view_xview[0], 
		view_yview[0], 
		view_wview[0], 
		view_hview[0]
	);
}