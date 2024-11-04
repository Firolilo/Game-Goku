move_contact_solid(270,abs(y_speed));
image_alpha-=0.0075;
if(x_speed != 0)
{
	if(x_speed > 0) move_contact_solid(0,x_speed);
	else if (x_speed < 0) move_contact_solid(180,abs(x_speed));
}