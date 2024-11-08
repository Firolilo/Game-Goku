gamepad_index = 0;
button_count = 16; 
any_button_pressed = false;

if (keyboard_check(vk_anykey)) {
    any_button_pressed = true;
} else {
    for (var i = 0; i < button_count; i++) {
        if (gamepad_button_check(gamepad_index, i)) {
            any_button_pressed = true;

            break; 
        }
    }
}

if (any_button_pressed) {
    room_goto(r_inicio);
}