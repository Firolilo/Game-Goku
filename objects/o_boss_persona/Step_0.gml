if(hp <= 0)
{
	dead = 1;
	if(image_index > image_number - 1 and sprite_index = s_yuki_dead) instance_destroy();
}

if(!dead)
{

	switch(state)
	{
		case "intro":
			if(image_index > 9) 
			{
				state = "Wildcard"; 
				alarm[0] =  30;
			}
		break;
		case "Wildcard":
			if(image_index > 4 and attack and !instance_exists(o_persona))
			{
				instance_create_layer(x+30,y-32,"enemy",o_persona);
				audio_play_sound(so_messiah,1,0);
			}
			if(image_index > image_number - 1 and attack and sprite_index = s_yuki_attack) attack = 0;
			if(alarm[2] == -1 and attack) alarm[2] = 60;
		break;
		case "Investigator":
			if(image_index > 5 and attack and !instance_exists(o_persona))
			{
				instance_create_layer(x+30,y-32,"enemy",o_persona);
				audio_play_sound(so_izanagi,1,0);
			}
			if(image_index > image_number - 1 and attack and sprite_index = s_narukami_attack) attack = 0;
			if(alarm[2] == -1 and attack) alarm[2] = 60;
		break;
		case "Trickster":
			if(image_index > 4 and attack and !instance_exists(o_persona)) 
			{
				instance_create_layer(x+30,y-32,"enemy",o_persona);
				audio_play_sound(so_arsene,1,0);
			}
			if(image_index > image_number - 1 and attack and sprite_index = s_joker_attack) attack = 0;
			if(alarm[2] == -1 and attack) alarm[2] = 60;
		break;
	}
}