/// @description EaseInOutExt(time, startX, startY, endX, endY, duration)
/// @param time
/// @param startX
/// @param startY
/// @param endX
/// @param endY
/// @param duration

var t  = argument[0];
var sX = argument[1];
var sY = argument[2];
var eX = argument[3];
var eY = argument[4];
var d  = argument[5];
var newX;
var newY;

t /= d/2;

if (t < 1) {
	newX = eX/2 * t * t + sX;
	newY = eY/2 * t * t + sY;
	return [newX, newY];
}

t--;

newX = -eX/2 * (t*(t-2)-1) + sX;
newY = -eY/2 * (t*(t-2)-1) + sY;
return [newX, newY];