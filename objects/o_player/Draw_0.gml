if(!dead){
	
	if(!baile)
	{
		if(canAtt){
			if(ground){
	
					if(x_speed==0){
						if(!crouch)
						sprite_index=s_sakura_idle;
						else
						sprite_index=s_sakura_crouch;
					}
					else{
						if(x_speed_fast_max==x_speed_max)
							sprite_index=s_sakura_run;
						else if(x_speed_slow_max==x_speed_max)
							sprite_index=s_sakura_walk;
					}
			}
			else{
				if(y_speed>=0 and !wall_state) sprite_index=s_sakura_fall;
				if(wall_state and (wall_r==right)) sprite_index=s_sakura_wall;
				if(wall_state and (wall_r!=right)) sprite_index=s_sakura_wall_op;
				if(y_speed<0 and !wall_state) sprite_index=s_sakura_jump;
			}
		}
		else{
			switch(combo_count){
				case 0:
					sprite_index=s_sakura_melee1;
				break;
				case 1:
					sprite_index=s_sakura_melee2;
				break;
				case 2:
					sprite_index=s_sakura_melee3;
				break;
			}
		}
	}
	else
	{
		sprite_index=s_sakura_peter;
	}

	if(right) image_xscale=1;
	else image_xscale=-1;
}
else{
	sprite_index=s_sakura_dead;
}

if(!crouch) mask_index=s_player_mask; else mask_index=s_player_crouch_mask;


//224,480 izquierda
//288,480 izquierda - medio
//416,480 medio
//544,480 derecha - medio
//608,480 derecha
card=instance_nearest(x,y,o_card);
if(card==noone){
	if(ki_trans>0){
		if(clow_card_1.y>400){
			if(!alpha_mode or card_anima!=1)clow_card_1.y-=2;
		}
		clow_card_1.x=416;
		if(ki_trans>1){
			if(clow_card_2.y>400){
				if(!alpha_mode or card_anima!=2)clow_card_2.y-=2
			}
			clow_card_1.x=288;
			clow_card_2.x=544;
			if(ki_trans>2){
				if(clow_card_3.y>400){
					if(!alpha_mode or card_anima!=3)clow_card_3.y-=2;
				}
				clow_card_1.x=224;
				clow_card_2.x=608;
				clow_card_3.x=416;
			}
			else{
				
				clow_card_3.y=480;
			}
		}
		else{
			clow_card_2.y=480;
		}
	}
	else {
		clow_card_1.y=480;
	}
}

// si usas el modo alpha mientras esta llegando la carto, no apareceera, no se como mostrarlo visualmente
// ya supe

if(alpha_mode){
	switch(card_anima){
		case 1:
			clow_card_1.y+=0.45;
		break;
		case 2:
			clow_card_2.y+=0.45;
		break;
		case 3:
			clow_card_3.y+=0.45;
		break;
	}
}
switch(hp){
	case 0:
		health_1.visible=0;
		health_2.visible=0;
		health_3.visible=0;
		health_4.visible=0;
		health_5.visible=0;
		health_6.visible=0;
	break;
	case 1:
		health_1.visible=1;
		health_2.visible=0;
		health_3.visible=0;
		health_4.visible=0;
		health_5.visible=0;
		health_6.visible=0;
	break;
	case 2:
		health_1.visible=1;
		health_2.visible=1;
		health_3.visible=0;
		health_4.visible=0;
		health_5.visible=0;
		health_6.visible=0;
	break;	
	case 3:
		health_1.visible=1;
		health_2.visible=1;
		health_3.visible=1;
		health_4.visible=0;
		health_5.visible=0;
		health_6.visible=0;
	break;
	case 4:
		health_1.visible=1;
		health_2.visible=1;
		health_3.visible=1;
		health_4.visible=1;
		health_5.visible=0;
		health_6.visible=0;
	break;
	case 5:
		health_1.visible=1;
		health_2.visible=1;
		health_3.visible=1;
		health_4.visible=1;
		health_5.visible=1;
		health_6.visible=0;
	break;
	case 6:
		health_1.visible=1;
		health_2.visible=1;
		health_3.visible=1;
		health_4.visible=1;
		health_5.visible=1;
		health_6.visible=1;
	break;
}


c_card_clow();

if (grappling_active)
{
    draw_line(x, y-sprite_height/2, grappling_x, grappling_y);
}

draw_self();