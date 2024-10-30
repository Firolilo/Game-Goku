
// --- Globales --- //

global.previous_room = 0;
global.checkpoint = 0;
global.player_respawn = 0;


// --- Particulas --- //

// - Armas - //
global.p_hit = part_type_create();
part_type_shape(global.p_hit,pt_shape_square);
part_type_size(global.p_hit,0.04,0.07,0,0);
part_type_color2(global.p_hit,65535,4227327);
part_type_alpha3(global.p_hit,1,1,0);
part_type_speed(global.p_hit,0.70,1.50,-0.02,0);
part_type_direction(global.p_hit,0,359,0,0);
part_type_blend(global.p_hit,1);
part_type_life(global.p_hit,18,30);

global.p_travel = part_type_create();
part_type_shape(global.p_travel,pt_shape_square);
part_type_size(global.p_travel,0.02,0.05,0,0);
part_type_scale(global.p_travel,1,1);
part_type_color3(global.p_travel,8454143,4227327,255);
part_type_alpha2(global.p_travel,1,0);
part_type_speed(global.p_travel,1,1.50,0.05,0);
part_type_direction(global.p_travel,0,359,0,0);
part_type_gravity(global.p_travel,0,90);
part_type_blend(global.p_travel,1);
part_type_life(global.p_travel,10,20);

// - Jugador - //

global.p_double_jump1 = part_type_create();
part_type_shape(global.p_double_jump1,pt_shape_disk);
part_type_size(global.p_double_jump1,0.1,0.2,0,0);
part_type_scale(global.p_double_jump1,1,1);
part_type_color3(global.p_double_jump1,16777088,8404992,8454143);
part_type_alpha2(global.p_double_jump1,1,0);
part_type_speed(global.p_double_jump1,0.7,1,0,0);
part_type_direction(global.p_double_jump1,180,359,0,0);
part_type_orientation(global.p_double_jump1,0,359,0,0.10,0);
part_type_gravity(global.p_double_jump1,0.07,270);
part_type_blend(global.p_double_jump1,1);
part_type_life(global.p_double_jump1,20,25);

global.p_double_jump2 = part_type_create();
part_type_shape(global.p_double_jump2,pt_shape_square);
part_type_size(global.p_double_jump2,0.08,0.10,0,0);
part_type_scale(global.p_double_jump2,1,1);
part_type_color3(global.p_double_jump2,255,4227327,8454143);
part_type_alpha2(global.p_double_jump2,1,0);
part_type_speed(global.p_double_jump2,1,1.50,0.05,0);
part_type_direction(global.p_double_jump2,220,319,0,0);
part_type_orientation(global.p_double_jump2,0,359,0,0.10,0);
part_type_gravity(global.p_double_jump2,0.20,270);
part_type_blend(global.p_double_jump2,1);
part_type_life(global.p_double_jump2,10,20);

