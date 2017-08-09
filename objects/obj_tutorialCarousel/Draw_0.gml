var item = menuItems[activeItem];
var title = item[0];
var descr = item[1];
	
draw_set_color(c_white);
draw_text(room_width/2,20,string(title));
draw_text(room_width/2,40,string(descr));

//draw pagination
for (var i = 0; i < menuItemCount; i++)
{
	var isActive = (i == activeItem);
	draw_set_color(isActive ? c_white : c_gray);
	draw_circle(20 + (i*paginationPadding),room_height-40,paginationRadius,0);
}