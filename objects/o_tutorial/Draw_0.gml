draw_set_font(global.doto);

if(collision_rectangle(x-16,y-32,x+48,y+96,o_player,0,1)){
	o_tv.show=1;
	if(o_tv.image_index>=o_tv.image_number-2){
		draw_text(256, 64, text);
		o_btn.show=1;
		o_btn.sprite_index=spr;
	}
}

draw_self();