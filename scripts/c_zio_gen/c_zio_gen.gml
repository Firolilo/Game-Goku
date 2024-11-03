// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function c_zio_gen() {
	c_coords_persona();

	if(zio > 20){
		zio = 0;
	}
	else
	{
		random_y = choose(y1, y2, y3, y4, y5); // Randomly choose y position
		instance_create_layer(x_def, random_y, "att", o_zio);

		alarm[4] = 15;
		zio++;

	}
}



