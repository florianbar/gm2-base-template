/// @description EaseIn(time, start, change, duration)
/// @param time
/// @param begin
/// @param change
/// @param duration

var t = argument[0];
var b = argument[1];
var c = argument[2];
var d = argument[3];

t/=d;

return c*t*t*t+b;