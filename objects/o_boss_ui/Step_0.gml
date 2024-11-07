if(hp <= 0)
{
	dead = 1;
	if(image_index > image_number - 1 and sprite_index = s_ui_defeat) instance_destroy();
}

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