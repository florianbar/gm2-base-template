activeItem = 0;

/*
 * 0 => description
 * 1 => sprite
 */
menuItems = [
	[  
		"This is the game",
		spr_square
	], 
	[ 
		"These are the controls",
		spr_square 
	], 
	[ 
		"This is how you play",
		spr_square 
	]
];
menuItemCount = array_length_1d(menuItems);
dotPadding = 20;