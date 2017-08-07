draw_set_color(c_white);
draw_rectangle(100,100,room_width-100,room_height-100,false);

draw_set_halign(fa_center);

for (var i = 0; i < array_length_1d(menuItems); i++)
{
	var textColor = (i == activeItem) ? c_black : c_gray;
	
	draw_set_color(textColor);
	draw_text(menuX, menuY + (lineHeight*i), menuItems[i]);
}