if (time < duration) 
{
	x = EaseOutElastic(time, startX, endX - startX, duration);
	y = EaseOutElastic(time, startY, endY - startY, duration);

	time++;
} 
else 
{
	var tempStartX = startX;
	var tempStartY = startY;
	
	startX = endX;
	startY = endY;
	
	endX = tempStartX;
	endY = tempStartY;
	
	time = 0;
}