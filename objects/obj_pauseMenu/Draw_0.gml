draw_set_color(c_white);
draw_rectangle(menuX, menuY, menuX+menuW, menuY+menuH, false);

draw_set_halign(fa_center);

draw_set_color(c_black);
draw_set_font(global.fontH1);
draw_text(room_width/2, menuY + 15, "GAME PAUSED");

draw_set_font(global.fontP);
for (var i = 0; i < array_length_1d(menuItems); i++)
{
	var textColor = (i == activeItem) ? c_black : c_gray;
	
	draw_set_color(textColor);
	draw_text(room_width/2, menuY + 80 + (lineHeight*i), menuItems[i]);
}