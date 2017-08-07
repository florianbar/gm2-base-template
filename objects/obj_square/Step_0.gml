if (time < duration) 
{
	image_xscale = EaseIn(time, start, change - start, duration);
	image_yscale = image_xscale;
	time++;
} 
else 
{
	var tempStart = start;
	start = change;
	change = tempStart;
	time = 0;
}