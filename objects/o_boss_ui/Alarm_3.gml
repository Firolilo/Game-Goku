/// @description Arc Att
if(attacks < 40)
{
	state = "arc_ki";

	num_objects = 8;
	angle_step = 180 / (num_objects - 1);

	for (i = 0; i < num_objects; i++)
	{
	    ki_direction = i * angle_step;

	    obj = instance_create_layer(x, y - 20, "att", o_ui_ki);
		obj.direction = ki_direction;
		attacks++;
	}
	alarm[3] = 30;
}else{
	//Volver a la esquina derecha
	state = "intro"
	intro = 1;
	side_right = 0;
}