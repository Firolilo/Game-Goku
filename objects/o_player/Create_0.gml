// ------------ Stats ---------------
hpMax=6;
hp = hpMax;
invi_time=45;
fall_max = 11;
jump_power = 10;
dmg=1;
ki_level=0;
ki=0;
ki_trans=0;

alpha_mode=0;
alpha_count=0;
// ------ boss
boss_killed = 0;
// ---------- Cards -------
	
cards_alpha=1;
see_card=0;
card_anima=0;
xd=0;


// ------------ Movimiento ------------

x_speed = 0;
x_speed_max = 0;
x_speed_slow_max = 2;
x_speed_fast_max = 6;


x_speed_normal_slow_max = 2;
x_speed_normal_fast_max = 6;

x_speed_alpha_slow_max = 5;
x_speed_alpha_fast_max = 10;

slow_zone=0.55;
dead_zone_x=0.2;
dead_zone_y=0.6;

x_accel = 0.5;

y_speed = 0;

crouch=0;

grav = 0.5;

ground = 0;

coyote_t = 5;
coyote_c = 1;

right = 1;

jump_wall_state=0; //verifica el salto entre paredes
wall_state=0; // si esta tocando pared coso
wall_final=1; // si esta en estado de salto entre paredes
wall_r=0; //que pared toca

weapon_modx = 15;
weapon_mody = -25;

invi=0;
dead=0;

rest_fast=1;

// Grappling Hook variables
grappling_active = false;  
grappling_x = 0;           
grappling_y = 0;           
rope_length = 0;           
angle = 0;                 
angular_velocity = 0;      
angular_acc=0;


//melee att
canAtt = 1;
combo_count=0;
att_moment=0;