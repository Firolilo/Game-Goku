if(sprite_index==s_melee1 || sprite_index==s_melee2 || sprite_index==s_melee3)
{
	canAtt=1;
	combo_count++;
	att_moment=0;
	if(combo_count>2)
	combo_count=0;	
}