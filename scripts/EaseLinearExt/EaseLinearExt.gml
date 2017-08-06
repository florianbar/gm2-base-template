/// @description EaseLinearExt(time, startX, startY, endX, endY, duration)
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

t /= d;

var newX = eX * t + sX;
var newY = eY * t + sY;

return [newX, newY];