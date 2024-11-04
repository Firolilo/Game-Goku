/// @description Persona Skill
switch(state)
{
	case "Wildcard": 
		alarm[5] = 30;
	break;
	case "Investigator":
		alarm[4] = 20;
	break;
	case "Trickster":
		if (!instance_exists(o_eiha)) instance_create_layer(704,384,"att",o_eiha);
	break;
}




