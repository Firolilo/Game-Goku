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
if(side_right) image_xscale = -1; else image_xscale = 1;
mask_index = s_player_mask;
draw_text(10,10,attacks)

draw_self();