dmg = 1;

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
	state = "tp";
	c_tp_sound();
	alarm[11] = 20;
}
