if(!dead){
// ------ INPUT ------
	
if (keyboard_check(ord("B")) or gamepad_button_check(0,gp_padl))
{     
	if(!baile) audio_play_sound(so_bird,1,10);
	baile = 1;
	if(ground) x_speed=0;
}
else
{
	audio_stop_sound(so_bird);
	baile = 0;	
}

	
	if(!baile)
	{
		c_actions();
		if(c_axis_control(2))
			x_speed_max=x_speed_fast_max;
		else if(c_axis_control(0) and c_axis_control(1))
			x_speed_max=x_speed_slow_max;
		else if(!(c_axis_control(0) and c_axis_control(1)))
			x_speed_max=x_speed_fast_max;
		
		if (keyboard_check(ord("D"))  or c_axis_control(3))
		{     
		
			if(x_speed < 0) x_speed = 0;
			if(x_speed < x_speed_max) x_speed += x_accel;
			right=1;
		}
	
		if (keyboard_check(ord("A"))  or c_axis_control(4))
		{   
			if(x_speed > 0)	x_speed = 0;
			if(x_speed > -x_speed_max) x_speed -= x_accel;
			right=0;
		}
		if ((!keyboard_check(ord("A")) and !keyboard_check(ord("D"))) and c_axis_control(2)) x_speed=0;
		if (keyboard_check(ord("A")) and keyboard_check(ord("D"))) x_speed=0;
	// -------------- CROUCH -----------------
		if(keyboard_check(ord("S")) or c_axis_control(5))
		{
			if(ground)
			{
				crouch = 1;
				x_speed = 0;
				weapon_mody = -14;
			} 
		}
		else
		{
			crouch = 0;
			weapon_mody = -25;
		}
	
		if(wall_state)
			x_speed=0;
	// ----------- JUMP --------------
		if (keyboard_check_pressed(vk_space) or gamepad_button_check_pressed(0,gp_face1))
		{
			if(grappling_active or ground or coyote_c or ( wall_state and ((wall_r and !right) or (!wall_r and right))))
			{
				if(wall_state){
					alarm[3]=-1;
					jump_wall_state=1;
					grav=0.5;
				}
				wall_state=0;
				ground = 0;
				coyote_c = 0;
				grappling_active=false;
				if(crouch and place_free(x,y+1)) y+=1;
		
				else y_speed = -jump_power;
			}
		}
		if (keyboard_check_released(vk_space) or gamepad_button_check_released(0,gp_face1))
		{
			if(y_speed < 0) y_speed = 0;	
		}

	// ------- Wall Jump --------

		if(jump_wall_state){
			if(wall_r){
				if(x_speed > -x_speed_max) x_speed -= x_accel;
				if(x_speed==0)jump_wall_state=0;
			}
			else{
				if(x_speed < x_speed_max) x_speed += x_accel;
				if(x_speed==0)jump_wall_state=0;
			}
		}
	
	// ------- hook -----
	
		//para que no se pase de la velocidad en cualquier caso
		if((x_speed < x_speed_max || x_speed > -x_speed_max ) and x_speed != 0) x_speed=x_speed_max*(abs(x_speed)/x_speed);	
		
		c_hook();
	// --------- Imagen Residual ----------

		if(rest_fast && alpha_mode){
			rest_fast=0;
			alarm[2]=2;
			obj=instance_create_layer(x,y,"part_back",o_rest);
			obj.image_index=image_index;
			obj.sprite_index=sprite_index;
			if(!right)obj.image_xscale=-1;
		}
	}
// ------- MOVIMIENTO -------
	if(x_speed != 0)
	{

		instance_create_layer(x+weapon_modx,y+weapon_mody,"part_back",o_particle);
		
		if(x_speed > 0) move_contact_solid(0,x_speed);
		else if (x_speed < 0) move_contact_solid(180,abs(x_speed));
	}

	if(y_speed != 0)
	{
		if(y_speed > 0)
		{
			if(collision_rectangle(x-12,y-10,x+12,y,o_terrain,0,1))
			{
				move_contact_solid(270,y_speed);	
			}
			else
			{
				y_speed_temp = floor(y_speed);
				while(collision_rectangle(x-12,y,x+12,y+y_speed_temp,o_terrain,0,1) != noone and y_speed_temp != 0)
				{
					y_speed_temp -=1; 
				}
				y+= y_speed_temp;
			}
		}
		else if (y_speed < 0)
		{
			move_contact_solid(90,abs(y_speed));
		}
	}

// ---------- CHECKS ---------
	if(hp<=0){
		dead=1;
		invi=1;
		alarm[1]=-1;
	}
	
	if (collision_rectangle(x-12,y,x+12,y+1,o_terrain,0,1) and !collision_rectangle(x-12,y-10,x+12,y,o_terrain,0,1)){
		ground=1;
		y_speed=0;
		coyote_c=1;
		wall_state=0;
		wall_final=1;
		jump_wall_state=0;
		grav=0.5;
	}
	else{
		crouch=0;
		ground=0;
		y_speed+=grav;
		if(wall_state)
			if(y_speed>1)y_speed=1;
		
		
		if((collision_rectangle(x+14,y-24,x+13,y-25,o_walljump,0,1) or collision_rectangle(x-14,y-24,x-13,y-25,o_walljump,0,1))){
			
			if(collision_rectangle(x+14,y-24,x+13,y-25,o_walljump,0,1)){
				wall_r= 1;
			}
				
			if(collision_rectangle(x-14,y-24,x-13,y-25,o_walljump,0,1)){
				wall_r=0;
			}
			if(!wall_state && wall_final){
				jump_wall_state=0;
				x_speed=0;
				wall_state=1;
				grav=0.17;
				y_speed=0;
				alarm[3]=50;
			}
		}
		else 
		{
			wall_state=0;
			grav=0.5;
		}
		
		if(coyote_c and alarm[11]==-1) alarm[11]=coyote_t;
		if(y_speed > fall_max) y_speed = fall_max;
		if(!place_free(x,y-1)){
			if(y_speed<0) y_speed=0;
		}
	}
	//ola

	

}
else{
	image_alpha-=0.005;
	if(image_alpha<=0){
		hp=hpMax;
		dead=0;
		invi=0;
		image_alpha=1;
		
		boss_killed = 0;
		room_goto(r_inicio);
	}

}