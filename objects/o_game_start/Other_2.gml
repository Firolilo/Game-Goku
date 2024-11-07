// --- Globales --- //


global.previous_room = r_boss_persona;
// global.checkpoint = 0;
global.player_respawn = 0;

if(room == r_inicio)
{
	o_player.x = 128;
	o_player.x = 384;
}

font_path = "Doto-VariableFont_ROND,wght.ttf";
font_size = 18;
font_bold = false; 
font_italic = false;

global.doto = font_add(font_path, font_size, font_bold, font_italic,0,0);
 