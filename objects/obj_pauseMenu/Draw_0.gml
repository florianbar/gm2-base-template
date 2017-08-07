draw_set_color(c_white);
draw_rectangle(menuX, menuY, menuX+menuW, menuY+menuH, false);

draw_set_halign(fa_center);

for (var i = 0; i < array_length_1d(menuItems); i++)
{
	var textColor = (i == activeItem) ? c_black : c_gray;
	
	draw_set_color(textColor);
	draw_text(room_width/2, menuY + 75 + (lineHeight*i), menuItems[i]);
}