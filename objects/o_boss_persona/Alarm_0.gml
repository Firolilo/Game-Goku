/// @description State Manager

switch(state)
{
	case "Wildcard":
		alarm[1] = 120;
		alarm[3] = room_speed * 7;
	break;
	case "Investigator":
		alarm[1] = 120; 
		alarm[3] = room_speed * 8;
	break;
	case "Trickster":
		alarm[1] = 120;
		alarm[3] = room_speed * 7;
	break;
}