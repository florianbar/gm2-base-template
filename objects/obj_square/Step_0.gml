if (time < duration) 
{
	pos = EaseOutElasticExt(time, startX, startY, endX - startX, endY - startY, duration, 1);
	time++;
	
	x = pos[0];
	y = pos[1];
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