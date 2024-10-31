/// @description End Punch/Lock in
if(lockfinish)
{
	lockfinish = 0;
	x = 96;
	side_right = 0;
}
y = 384;
switch(irandom(1))
	{
		case 0:	
			state = "prepare_att";
		break;
		case 1:
			state = "prepare_tp";
		break;
	}
alarm[0] = 50;