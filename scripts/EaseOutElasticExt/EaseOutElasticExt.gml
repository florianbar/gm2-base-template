/// @description EaseOutElasticExt(time, startX, startY, endX, endY, duration, tension)
/// @param time
/// @param startX
/// @param startY
/// @param endX
/// @param endY
/// @param duration
/// @param intensity

var t  = argument[0];
var sX = argument[1];
var sY = argument[2];
var eX = argument[3];
var eY = argument[4];
var d  = argument[5];
var tens = argument[6]; // use a value between 0 - 1 for best results
var newX;
var newY;

var s = 0.1;
var p = 0;
var aX = eX;
var aY = eY;

if (t == 0) {
	newX = sX;
	newY = sY;
	return [newX, newY];
}

t /= d;

if (t == 1) {
	newX = sX + eX;
	newY = sY + eY;
	return [newX, newY];
}

if (!p) p = d * tens;

if (aX < abs(eX)) {
	aX = eX;
	s = p/4;
} else {
	s = p / (2*pi) * arcsin(eX/aX);
}

if (aY < abs(eY)) {
	aY = eY;
	s = p/4;
} else {
	s = p / (2*pi) * arcsin(eY/aY);
}

newX = aX * power(2,-10*t) * sin((t*d-s)*(2*pi)/p) + eX + sX;
newY = aY * power(2,-10*t) * sin((t*d-s)*(2*pi)/p) + eY + sY;

return [newX, newY];