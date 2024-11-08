if(room==r_inicio or r_menu==room or r_outro==room){
	instance_create_layer(x,y,"part_front",obj_OLDTVFilter_false);
}
else{
	if(room==r_boss_parkour or room==r_boss_ui or room==r_boss_persona){
		s1=instance_create_layer(x,y,"part_front",obj_OLDTVFilter_false);
		back=instance_create_layer(0,0,"part_front",o_presentation);

		switch(room){
			case r_boss_parkour:
				back.sprite_index=s_versus_parkour;
			break;
			case r_boss_persona:
				back.sprite_index=s_versus_persona;
			break;
			case r_boss_ui:
				back.sprite_index=s_versus_ui;
			break;
		}
		alarm[1]=120;
	}else{
		s1=instance_create_layer(x,y,"part_front",obj_OLDTVFilter_BW);
		alarm[0]=ti;
	}
}