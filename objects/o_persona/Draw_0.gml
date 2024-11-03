switch(o_boss_persona.state)
{
	case "Wildcard":
		sprite_index = s_messiah;
		if(image_index > 7) image_index--;
	break;
	case "Investigator":
		sprite_index = s_izanagi;
		if(image_index > 7) image_index--;
	break;
	case "Trickster":
		sprite_index = s_arsene;
	break;
}

draw_self();