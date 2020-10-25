global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_1)
global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_2)
global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_3)
global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_4)
global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_5)
global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_6)
global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_7)
global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_8)


if (!global.is_gamepad_connected) {
    show_debug_message("No gamepad was found")
} else {
    var gp_num = gamepad_get_device_count();
    show_debug_message("Game pads connected:" + string(gp_num))
    gamepad_set_axis_deadzone(global.GAME_PAD_1, 0.5);
}

