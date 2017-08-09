var item = menuItems[activeItem];
var title = item[0];
var descr = item[1];
var image = item[2];


/*
 * Title and description
 */	
draw_set_color(c_white);
draw_set_halign(fa_center);

draw_set_font(global.fontH1);
draw_text(room_width/2, 80, string(title));

draw_set_font(global.fontP);
draw_text(room_width/2, room_height/2+60, string(descr));

draw_sprite(spr_square,0, room_width/2, room_height/2);


/*
 * Pagination
 */
for (var i = 0; i < menuItemCount; i++)
{
	var isActive = (i == activeItem);
	var posLeft = (room_width/2) - (menuItemCount-1) * (dotPadding/2);
	var posX = posLeft + (dotPadding * i);
	//(menuItemCount-1) * paginationPadding; // (3-1)*20 == 40 / 2 == 20 (room_width/2) 
	
	draw_set_color(isActive ? c_white : c_gray);
	draw_circle(posX,room_height-50,4,0);
}

/*
 * Tool tip
 */
draw_set_color(c_gray);
draw_set_font(global.fontSmall);
draw_text(room_width/2, room_height-30, "Press space to continue");