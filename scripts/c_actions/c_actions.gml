// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function c_actions(){
	
	// melee attack
	
	if(!alpha_mode){
		
		if((gamepad_button_check_pressed(0,gp_face3) or keyboard_check_pressed(vk_control)) && canAtt){
			canAtt=0;
		}
		if(!canAtt){
			if(right){
				if(collision_rectangle(x+20,y-24,x+70,y-50,o_enemy_body,0,1)){
					if(!att_moment){
						cards_alpha=1;
						if(ki<3 and ki_level<3){ 
							ki+=1;
							see_card=1;
							alarm[0]=-1;
							alarm[0]=30;
						}
						att_moment=1;
						o_enemy_body.hp-=dmg;
					}
				}
			}
			else{
				if(collision_rectangle(x-20,y-24,x-70,y-50,o_enemy_body,0,1)){
					if(!att_moment){
						cards_alpha=1;
						if(ki<3 and ki_level<3){ 
							ki+=1;
							see_card=1;
							alarm[0]=-1;
							alarm[0]=30;
						}
						att_moment=1;
						o_enemy_body.hp-=dmg;
					}
				}
			}
		}
		
		if(ki==3 and ki_level<3){
			ki_trans++;
			instance_create_layer(x,y-80,"att",o_card);
			ki=0;
		}
	
		// super shoot
		if((gamepad_button_check_pressed(0,gp_face4) or gamepad_button_check_pressed(0,gp_face3) or keyboard_check_pressed(ord("E"))) && canAtt){
			if(ki_level>0){
				if(ki_trans!=ki_level){
					switch(ki_trans){
						case 2:
							xd=clow_card_2.y;
							clow_card_1.y=xd;
							clow_card_1.can=1;
						break;
						case 3:
							xd=clow_card_3.y;
							clow_card_2.y=xd;
							clow_card_2.can=1;
						break;
					}
					ki_trans=ki_level;
					ki_level--;
				}else{
					ki_trans--;
					ki_level=ki_trans;
				}
				obj=instance_create_layer(x,y+weapon_mody,"att",o_super_shoot);
				if(!right){
					obj.direction=180;
					obj.image_xscale=-1;
				}
			}
		}
	}
	
	// SI LO MANTIENE presionand y no tiene carta, no se activa el card anima
	if((gamepad_button_check(0,gp_shoulderr) or keyboard_check(vk_shift)) and ki_level>0){
		if(gamepad_button_check_pressed(0,gp_shoulderr) or keyboard_check_pressed(vk_shift))card_anima=ki_level;
		alpha_mode=1;
		alpha_count++;
		if(alpha_count==180){
			ki_level--;
			ki_trans--;
			switch(ki_trans){
				case 1:
					clow_card_1.y=400;
				break;
				case 2:
					clow_card_2.y=400;
				break;
			}
			card_anima=ki_level;
			alpha_count=0;
		}
		
		x_speed_fast_max=x_speed_alpha_fast_max;
		x_speed_slow_max=x_speed_alpha_slow_max;
		
		//TODO
		// esto lo iba a terminar, pero omar llego y no lo hice, asi que este es mi ultimo comentario hasta que vuelva
		// tenia que hacer que se equilibre esta mamada con la otra, gracias
		// Lo termine
		
		
	}
	
	if(ki_level==0){
		alpha_mode=0;
		x_speed_fast_max=x_speed_normal_fast_max;
		x_speed_slow_max=x_speed_normal_slow_max;
		card_anima=0;
	}
	if ((gamepad_button_check_released(0,gp_shoulderr) or keyboard_check_released(vk_shift)) and alpha_mode and ki_level>0){
		
		alpha_mode=0;
		equal_ki=0;
		if(ki_level==ki_trans)
			equal_ki=1;
		ki_trans--;
		if(!equal_ki){
			switch(ki_trans){
				case 1:
					xd=clow_card_2.y;
					clow_card_1.y=xd;
					clow_card_1.can=1;
				break;
				case 2:
					xd=clow_card_3.y;
					clow_card_2.y=xd;
					clow_card_2.can=1;
				break;
			}
		}
		ki_level--;
		alpha_count=0;
		card_anima=0;
		x_speed_fast_max=x_speed_normal_fast_max;
		x_speed_slow_max=x_speed_normal_slow_max;
		
	}
}