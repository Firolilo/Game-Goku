draw_set_font(global.doto);

distance_to_player = point_distance(x, y, o_player.x, o_player.y);

if (distance_to_player < distance) {
    draw_text(192, 162, text);
}

draw_self();