//--- Stats ---//

hpMax = 300; //400
hp = hpMax;

dmg = 1;

//--- Control ---//

ui = 1;  // hola, franco paso por aqui,
/*
El tiempo volando (volando) se va (se va)
Hoy te tengo, pero quizá mañana te vas (yo necesito verte)
A qué estamo' jugando? (Jugando) si ya
Los do' caímos, aquí no hay vuelta atrás (escucha bien)
Nadie lo hace como tú lo sabe' hacer (yeah)
Ese cuerpito no e' mío, pero yo le soy fiel
Si tú no quiere' salir, yo no quiero beber
Pero cuando te dé hambre no' podemo' comer (Mr. W)
Nadie lo hace como tú lo sabe' hacer (woh-oh-oh-oh)
Ese cuerpito no e' mío, pero yo le soy fiel (tra, tra, tra)
Si tú no quiere' salir, yo no quiero beber (se hace lo que uste' diga)
Pero cuando te dé hambre no' podemo' comer (la presión)
Tú 'tás dura sin ir al gym, taco' Louboutin (sí!)
Maquillaje de Sephora, tanga de Supreme (supreme)
Tu celular y tu corazón tienen PIN
Por nadie llora, a to'a la' relacione' pone fin
Cómo se siente, cómo se siente? (Siente)
Baby, del uno al die', yo te doy un veinte (veinte)
Contigo nadie gana por má' que comenten (no)
Hoy e' noche de sexo, llamé pa' verte (Jhay Cortez)
En la jeepeta arrebatao', tú me tiene engabetao' (engabetao')
Siempre con gana' 'e darte, no importa cuánto te he dao' (me sigue'?)
A ti nadie te deja, tú todo' lo' ha' dejao'
En la cama tengo gana' 'e bailarte como Rauw
Tu recuerdo me persigue (-sigue)
Porque como tú, baby, hoy se consigue (-sigue)
Tú te porta' mal pa' que Dio' te castigue
Le digo: La presión y me dice: me sigue'?, Sí
*/
state = "intro"; //prepare_att, punch, move
side_right = 0;

dead = 0;

//Kame
created = 0;

//Lockin

lockin = 0;
lockfinish = 0;
attacks = 0;

intro = 1;

audio_play_sound(so_ui_bg,2,2);

randomize();