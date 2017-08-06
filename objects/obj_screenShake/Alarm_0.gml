/// @description Shake screen

var amountX = random_range(-offset, offset);
var amountY = random_range(-offset, offset);
     	 
camera_set_view_pos(view_camera[0], amountX, amountY); 

alarm[0] = shakeSpeed;