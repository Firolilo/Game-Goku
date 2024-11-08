if(!dead)
{

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
		
}
else
{
	sprite_index = s_yuki_dead;
}

if(hp > 0)
{
	thp = (hp / hpMax) * 100;
	draw_sprite_ext(s_persona_hpbar,0,790,411,thp,1,0,c_white,1);
}

draw_sprite(s_HUD_Persona,0,736,384);

draw_self();