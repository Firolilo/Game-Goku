if(sprite_index==s_sakura_melee1 || sprite_index==s_sakura_melee2 || sprite_index==s_sakura_melee3)
{
	canAtt=1;
	combo_count++;
	att_moment=0;
	if(combo_count>2)
	combo_count=0;	
}