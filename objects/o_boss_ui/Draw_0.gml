if(!dead)
{
	switch(state)
	{
		case "intro":
			sprite_index = s_ui_walk;
		break;
		case "prepare_att":
		case "prepare_tp":
			sprite_index = s_ui_stand;
		break;
		case "punch":
			sprite_index = s_ui_punch;
		break;
		case "tp":
			sprite_index = s_ui_tp;
		break;
		case "dash":
			sprite_index = s_ui_dash;
		break;
		case "kame":
			sprite_index = s_ui_kamehameha;
		break;
		case "arc_ki":
			sprite_index = s_ui_arc;
			if(image_index > 6) image_index--;
		break;
		case "lockin":
			sprite_index = s_ui_lockin;
			if(image_index > 3) image_index--;
		break;
	}
}
else
{
	sprite_index = s_ui_defeat;
}

if(side_right) image_xscale = -1; else image_xscale = 1;
mask_index = s_player_mask;

if(hp > 0)
{
	thp = (hp / hpMax) * 100;
	draw_sprite_ext(s_ui_hpbar,0,64,40,thp*8.3,1,0,c_white,1);
}

draw_self();