switch(tipo)
{
	case 1:
		sprite_index = s_ui_kame_1;
	break;
	case 2:
		sprite_index = s_ui_kame_2;
	break;
	case 3:
		sprite_index = s_ui_kame_3;
	break;
}

if(o_boss_ui.side_right) image_xscale = -1; else image_xscale = 1;
mask_index = s_kame_mask;
draw_self();