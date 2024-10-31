event_inherited();

if(intro)
{
	if(x < 864)
	{
		x += 2;	
	}
	else
	{
		side_right = 1;
		intro = 0;
		state = "prepare_att";
				alarm[0] = 1.5 * room_speed;
	}
}

if(lockin)
{
	x = o_player.x;
	y = 128;
}