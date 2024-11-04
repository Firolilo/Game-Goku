y_speed = 3;
x_speed=0;

val=irandom_range(1,3);

switch(val){
	case 1:
		x_speed=3;
	break;
	case 2:
		x_speed=0;
	break;
	case 3:
		x_speed=-3;
	break;
}

co=irandom_range(1,5);

alarm[0]=irandom_range(5,10);