if(tipo != 3 and xd == 0)
{
	xd = 1;
	if(o_boss_ui.side_right)
	{
		if(!collision_rectangle(x-32,y+15,x-96,y-15,o_solid,0,1))
		{
			obj = instance_create_layer(x-32,y,"att",o_ui_kame);
			obj.tipo = 2;
		}
		else
		{
			obj = instance_create_layer(x-32,y,"att",o_ui_kame);
			obj.tipo = 3;	
		}
	}else{
		
		if(!collision_rectangle(x+32,y+15,x+96,y-15,o_solid,0,1))
		{
			obj = instance_create_layer(x+32,y,"att",o_ui_kame); 
			obj.tipo = 2;
		}
		else
		{
			obj = instance_create_layer(x+32,y,"att",o_ui_kame);
			obj.tipo = 3;	
		}
	}
}