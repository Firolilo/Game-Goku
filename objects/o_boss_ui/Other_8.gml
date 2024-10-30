if(side_right) side_right = 0; else side_right = 1;

if(state == "dash")
{
	state = "kame";
	{
		alarm[1] = 60;
		alarm[0] = 180;
	}
}
else
{
	switch(irandom(1))
	{
		case 0:	
			state = "prepare_att";
		break;
		case 1:
			state = "prepare_tp";
		break;
	}

	alarm[0] = 20;
}
