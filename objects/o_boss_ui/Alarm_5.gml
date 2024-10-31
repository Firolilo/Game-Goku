/// @description Lock In Ki Att

if(lockin)
{
	state = "tp";
	c_tp_sound();
	image_index = 3;
	lockin = 0;	
	alarm[5] = 10;
}
else if(attacks > 10){
	state = "tp";
	c_tp_sound();
	lockfinish = 1;
	alarm[11] = 20;

}
else
{
	state = "lockin";
	lockin = 1;
	obj = instance_create_layer(x, y - 20, "att", o_ui_ki);
	obj.direction = 270;
	obj.grow = 1; 

	alarm[5] = 20;
	attacks++;

}



