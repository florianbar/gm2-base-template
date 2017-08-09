draw_set_halign(fa_center);
draw_set_font(global.fontP);

for (var i = 0; i < array_length_1d(menuItems); i++)
{
	var textColor = (i == activeItem) ? c_white : c_gray;
	
	draw_set_color(textColor);
	draw_text(menuX, menuY + (lineHeight*i), menuItems[i]);
}