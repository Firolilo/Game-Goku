if(!steak)
{
	with(o_cluod_mobile){
	y -= 416;
	}
	with(o_solid_mobile){
		y -= 416;
	}
	with(o_hook_point){
		y -= 416;
	}
	with(o_walljump){
		y -= 416;
	}
	with(o_parkour_check){
		y -= 416;
	}
	with(o_parkour_danger){
		y -= 416;
	}
	with(o_trans_r){
		y -= 416;
	}
}
else
{
	with(o_cluod_mobile){
	y += 1664;
	}
	with(o_solid_mobile){
		y += 1664;
	}
	with(o_hook_point){
		y += 1664;
	}
	with(o_walljump){
		y += 1664;
	}
	with(o_parkour_check){
		y += 1664;
	}
	with(o_parkour_danger){
		y += 1664;
	}	
		with(o_trans_r){
		y += 1664;
	}
}

if(end_p) instance_create_layer(448,96,"enemy", o_boss_parkour);

if(finish) instance_destroy(o_boss_parkour);
o_player.x = x_player_next;
o_player.y = y_player_next;

//instance_destroy()