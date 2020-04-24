global.is_gamepad_connected = gamepad_is_connected(global.GAME_PAD_1)

if (!global.is_gamepad_connected) {
    show_debug_message("No gamepad was found")
} else {
    var gp_num = gamepad_get_device_count();
    show_debug_message("Game pads connected:" + string(gp_num))
    gamepad_set_axis_deadzone(global.GAME_PAD_1, 0.5);
}

