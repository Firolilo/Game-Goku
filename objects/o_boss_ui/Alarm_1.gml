/// @description Attacks
switch(state)
{
	case "kame":
	if(!created)
		if(side_right) obj = instance_create_layer(x-50,y-28,"att",o_ui_kame); else obj = instance_create_layer(x+50,y-28,"att",o_ui_kame);
		if(image_xscale == 1) obj.hspeed *= -1;
		created = 1;
	break;
}


