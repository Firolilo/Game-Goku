if(right) image_xscale = -2; else image_xscale = 2;

if(dead) {
	sprite_index = s_pichula_dead;
	if (image_index > image_number - 1)
	{
		instance_destroy();	
	}
}