

image_alpha-=0.0075;

if(y_speed<0)
y_speed-=0.001;

if(y_speed>3) y_speed=3;

if(y_speed != 0)
{
	if(y_speed > 0) move_contact_solid(270,y_speed);	
	else if (y_speed < 0) move_contact_solid(90,abs(y_speed));
	
}

if(x_speed != 0)
{
		
	if(x_speed > 0) {
		move_contact_solid(0,x_speed);
		x_speed-=0.1;
	}
	else if (x_speed < 0){
		move_contact_solid(180,abs(x_speed));
		x_speed+=0.1;
	}
}