// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_card_clow(){
	if(see_card){
		cards_alpha-=0.06;
		switch(ki){
			case 0:
				if(ki_level>0 and ki_level<=3){
					draw_sprite_ext(s_little_clow_card,6,x,y-80,1,1,0,c_white,cards_alpha);	
				}
			break;
			case 1:
				if(ki_level<1)draw_sprite_ext(s_little_clow_card,0,x,y-80,1,1,0,c_white,cards_alpha);
				else if(ki_level<2)draw_sprite_ext(s_little_clow_card,2,x,y-80,1,1,0,c_white,cards_alpha);
				else if(ki_level<3)draw_sprite_ext(s_little_clow_card,4,x,y-80,1,1,0,c_white,cards_alpha);
			break;
			case 2:
				if(ki_level<1)draw_sprite_ext(s_little_clow_card,1,x,y-80,1,1,0,c_white,cards_alpha);
				else if(ki_level<2)draw_sprite_ext(s_little_clow_card,3,x,y-80,1,1,0,c_white,cards_alpha);
				else if(ki_level<3)draw_sprite_ext(s_little_clow_card,5,x,y-80,1,1,0,c_white,cards_alpha);
			break;
		}
	}
}