instance_destroy(s1);
if(cont<3){
	switch(cont){
		case 0: s1=instance_create_layer(x,y,"part_front",obj_OLDTVFilter_VHS);
		break;
		case 1: s1=instance_create_layer(x,y,"part_front",obj_OLDTVFilter_Composite);
		break;
		case 2: s1=instance_create_layer(x,y,"part_front",obj_OLDTVFilter_SVideo);
		break;
	}
	cont++;
	alarm[0]=ti;
}
