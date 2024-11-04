switch(state)
{
	case "intro":
		sprite_index = s_yuki_intro;
	break;
	case "Wildcard":
		if (attack) sprite_index = s_yuki_attack;
		else sprite_index = s_yuki_stand;
	break;
	case "Investigator":
		if (attack) sprite_index = s_narukami_attack;
		else sprite_index = s_narukami_stand;
	break;
	case "Trickster":
		if (attack) sprite_index = s_joker_attack;
		else sprite_index = s_joker_stand;
	break;
}
mask_index = s_player_mask;
draw_text(10,10,state)
draw_text(10,30,attack)
draw_text(10,50,push_meter)
draw_text(10,70,alarm[1]);

draw_self();