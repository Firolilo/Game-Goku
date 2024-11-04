function c_axis_control(argument0){
	cond=0;
	switch(argument0){
		case 0:
			if(gamepad_axis_value(0,gp_axislh)<slow_zone) cond=1;
		break;
		case 1:
			if(gamepad_axis_value(0,gp_axislh)>-slow_zone) cond=1;
		break;
		case 2:
			if(gamepad_axis_value(0,gp_axislh)<dead_zone_x and gamepad_axis_value(0,gp_axislh)>-dead_zone_x) cond=1;
		break;
		case 3:
			if(gamepad_axis_value(0,gp_axislh)>dead_zone_x) cond=1;
		break;
		case 4:
			if(gamepad_axis_value(0,gp_axislh)<-dead_zone_x) cond=1;
		break;
		case 5:
			if(gamepad_axis_value(0,gp_axislv)>dead_zone_y) cond=1;
		break;
	}
	
	return cond;
}