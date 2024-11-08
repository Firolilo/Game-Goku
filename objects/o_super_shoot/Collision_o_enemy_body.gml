if(alarm[0]=-1 && !att_enemy){
	if(!att_enemy) audio_play_sound(so_morado,1,0,1,2);
    att_enemy=1;
    alarm[0]=80;
    speed=1;
    if(instance_nearest(x,y,o_enemy_body)!=noone) o_enemy_body.hp-=dmg;
}

if(alarm[1]=-1){
    alarm[1]=45;
}