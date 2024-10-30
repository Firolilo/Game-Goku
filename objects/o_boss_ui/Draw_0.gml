switch(state)
{
	case "prepare_att":
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
}
if(side_right) image_xscale = -1; else image_xscale = 1;
mask_index = s_player_mask;
draw_self();