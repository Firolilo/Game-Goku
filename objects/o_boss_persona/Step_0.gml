event_inherited();

switch(state)
{
	case "Wildcard":
		if(image_index > 4 and attack and !instance_exists(o_persona)) instance_create_layer(x+30,y-32,"enemy",o_persona);
		if(image_index > image_number - 1 and attack) attack = 0;
		if(alarm[2] == -1 and attack) alarm[2] = 60;
	break;
	case "Investigator":
		if(image_index > 5 and attack and !instance_exists(o_persona)) instance_create_layer(x+30,y-32,"enemy",o_persona);
		if(image_index > image_number - 1 and attack) attack = 0;
		if(alarm[2] == -1 and attack) alarm[2] = 60;
	break;
	case "Trickster":
	
	break;
}
