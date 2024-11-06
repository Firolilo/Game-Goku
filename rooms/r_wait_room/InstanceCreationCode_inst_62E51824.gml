switch(o_player.boss_killed)
{
	case 0:
		if(irandom(1)){
			target_room = r_boss_parkour;
		}
		else 
		{
			target_room = r_boss_parkour;
		}
	break;
	case 1:
		if(global.previous_room = r_boss_parkour) target_room = r_boss_persona;
		else target_room = r_boss_parkour;
	break;
	case 2:
		target_room = r_boss_ui;
	break;
}