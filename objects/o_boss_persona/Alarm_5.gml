/// @description Megidolaon

if(megidolaon > 2){
	megidolaon = 0;
}
else
{
	instance_create_layer(o_player.x,160,"att",o_megidolaon);
	alarm[5] = 40;
	megidolaon++;
}
