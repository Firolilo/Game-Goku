y_speed = 0;
x_speed=-4;

val=irandom_range(1,3);

switch(val){
	case 1:
		y_speed=-5;
	break;
	case 2:
		y_speed=-1;
	break;
	case 3:
		y_speed=2;
	break;
}

co=irandom_range(1,7);

//alarm[0]=irandom_range(5,10);
alarm[0]=irandom_range(99,100);
