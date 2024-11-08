draw_text(x-70,y-40,"Golpea para saltar tutorial");
if(	o_trans_r.target_room==r_wait_room)
draw_text(x-50,y-26,"Ahora Entra al portal");

if(collision_rectangle(x-32,y-32,x+54,y+96,o_player,0,1)){
	if((gamepad_button_check_pressed(0,gp_face3) or keyboard_check_pressed(vk_control))){
		o_trans_r.target_room=r_wait_room;
	}
}

draw_self();