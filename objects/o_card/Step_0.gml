if(move){
	direction=dir;
}
else{
	x=o_player.x;
	y=o_player.y-80;
}

if(y>490) instance_destroy();