switch(state)
{
	case "prepare_att":
		sprite_index = s_joker_stand;
}
if(side_right) image_xscale = -1; else image_xscale = 1;
mask_index = s_player_mask;

draw_self();