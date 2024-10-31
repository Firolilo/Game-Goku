/// @description State Manager
created = 0;
switch(state)
{
	case "prepare_att":
	switch(irandom(5))
	{
		case 0:
		case 1:
		case 5:
			state = "punch";
			y = o_player.y;
			if(side_right)
			{
				path_start(p_ui_move_to_left, 20, path_action_stop,0);	
			}
			else
			{
				path_start(p_ui_move_to_right, 20, path_action_stop,0);	
			}
		break;
		case 2:
			state = "dash";
			audio_play_sound(so_kamea,1,0)
			if(side_right)
			{
				path_start(p_ui_move_to_left, 30, path_action_stop,0);	
			}
			else
			{
				path_start(p_ui_move_to_right, 30, path_action_stop,0);	
			}
		break;
		case 3:
			state = "tp";
			c_tp_sound();
			attacks = 0;
			x = 480;
			alarm[3] = 20;
		break;
		case 4:
			state = "tp";
			c_tp_sound();
			attacks = 0;
			alarm[4] = 20;
		break;
	}
	break;
	case "prepare_tp":
		state = "tp";
		c_tp_sound();
		alarm[2] = 20;
		alarm[0] = 80;
	break;

	default:
		state = "prepare_att"
		alarm[0] = 1;
	break;
	
}





