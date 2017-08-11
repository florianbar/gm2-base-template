//state => enter, leave, normal
state = "enter";

menuItems = [
	"RESUME", 
	"HOW TO PLAY", 
	"END GAME"
];
activeItem = 0;

menuW = 300;
menuH = 200;
menuX = (room_width - menuW) / 2; 
menuY = (room_height - menuH) / 2;
lineHeight = 30;

startY = -menuH;
endY = menuY;
duration = Seconds(0.5);
time = 0;