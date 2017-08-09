if (time < duration) 
{
	x = EaseOutElastic(time, start, change - start, duration);
	time++;
} 
else 
{
	var tempStart = start;
	start = change;
	change = tempStart;
	time = 0;
}