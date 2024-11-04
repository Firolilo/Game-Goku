/// @description Character change

switch(state)
{
	case "Wildcard":
		state = "Investigator";
		alarm[0] = 60;
	break;
	case "Investigator":
		state = "Trickster";
		alarm[0] = 60;
	break;
	case "Trickster":
		state = "Wildcard";
		alarm[0] = 60;
	break;
}




