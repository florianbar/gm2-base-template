/// @description Draw sprite to screen 

if (!is_undefined(freezeSprite))
{
	draw_sprite_stretched(
	    freezeSprite, 
		0, 
		view_xview[0], 
		view_yview[0], 
		view_wview[0], 
		view_hview[0]
	);
}