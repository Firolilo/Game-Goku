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

o_player.x = x_player_next;
o_player.y = y_player_next;

instance_destroy()