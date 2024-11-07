// Insertar particulas bonitas

with(o_trans_r)
{
	y-=384;	
}

o_player.boss_killed++;


audio_stop_all();

audio_play_sound(so_win,2,0);
