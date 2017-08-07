fadeAlpha = clamp(fadeAlpha + (fadeState * fadeSpeed), 0, 1);

if (fadeAlpha == 1) 
{
    room_goto(target);
    fadeState = -1;
}

if (fadeAlpha == 0 && fadeState == -1) 
{
    instance_destroy();
}

draw_set_colour(fadeColor);
draw_set_alpha(fadeAlpha);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(1);