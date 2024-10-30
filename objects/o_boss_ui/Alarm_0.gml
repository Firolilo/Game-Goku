/// @description State Manager
created = 0;
switch(state)
{
	case "prepare_att":
	switch(irandom(2))
	{
		case 0:
		case 1:
			state = "punch";
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
			if(side_right)
			{
				path_start(p_ui_move_to_left, 30, path_action_stop,0);	
			}
			else
			{
				path_start(p_ui_move_to_right, 30, path_action_stop,0);	
			}
		break;
	}
	break;
	case "prepare_tp":
		state = "tp";
		alarm[2] = 20;
		alarm[0] = 80;
	break;
	default:
		state = "prepare_att"
		alarm[0] = 1;
	break;
}





