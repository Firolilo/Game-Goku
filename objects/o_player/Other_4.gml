ki = 0;
ki_trans = 0;
ki_level = 0;
card_anima = 0;

clow_card_1=instance_create_layer(224,480,"cards",o_clow_card);
clow_card_1.val=1;
clow_card_2=instance_create_layer(416,480,"cards",o_clow_card);
clow_card_2.val=2;
clow_card_3=instance_create_layer(608,480,"cards",o_clow_card);
clow_card_3.val=3;

health_1=instance_create_layer(x,y-65,"health",o_health);
health_1.cord_x=0;
health_1.cord_y=65;

health_2=instance_create_layer(x+8,y-65,"health",o_health);
health_2.cord_x=2;
health_2.cord_y=65;
health_2.image_xscale=-1;

health_3=instance_create_layer(x+20,y-50,"health",o_health);
health_3.cord_x=20;
health_3.cord_y=50;

health_4=instance_create_layer(x+22,y-50,"health",o_health);
health_4.cord_x=22;
health_4.cord_y=50;
health_4.image_xscale=-1;

health_5=instance_create_layer(x-20,y-50,"health",o_health);
health_5.cord_x=-20;
health_5.cord_y=50;

health_6=instance_create_layer(x-18,y-50,"health",o_health);
health_6.cord_x=-18;
health_6.cord_y=50;
health_6.image_xscale=-1;
