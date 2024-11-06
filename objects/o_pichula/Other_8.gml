if(right and !dead)
{
	right = 0;
	path_start(p_pichula_path_right,4,path_action_stop,0);	
}
else if (!right and !dead)
{
	right = 1;
	path_start(p_pichula_path_left,4,path_action_stop,0);
}