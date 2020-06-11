var from_scratch = argument[0] // true, false

if (from_scratch) {
    global.player_weapon = global.PLAYER_SINGLE_LASER
    global.player_lives = 2
    global.player_score = 0
    global.player_hull = 100
    global.player_hull_max = 100
    global.player_shield = 0
    global.player_shield_max = 0
    global.player_blue_energy = 200
    global.player_blue_energy_base = 200
    global.player_red_energy = 200
    global.player_red_energy_base = 200
    global.player_green_energy = 200
    global.player_green_energy_base = 200
    global.player_rgb_energy = 0
    global.player_rgb_energy_base = 200
} else {
    ini_open(global.FILE_GAME_SETTINGS);
    LoadGameState()
    ini_close()
}


