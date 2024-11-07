//--- Stats ---//

hpMax = 1;  //400
hp = hpMax;

dmg = 1;

//--- Control ---//

ui = 1;
state = "intro"; //prepare_att, punch, move
side_right = 0;

dead = 0;

//Kame
created = 0;

//Lockin

lockin = 0;
lockfinish = 0;
attacks = 0;

intro = 1;

audio_play_sound(so_ui_bg,2,2);

randomize();