activeItem = 0;

/*
 * 0 => title
 * 1 => description
 * 2 => sprite
 */
menuItems = [
	[ 
		"Step 1", 
		"This is the game",
		spr_square
	], 
	[ 
		"Step 2", 
		"These are the controls",
		spr_square 
	], 
	[ 
		"Step 3",
		"This is how you play",
		spr_square 
	]
];
menuItemCount = array_length_1d(menuItems);
dotPadding = 20;