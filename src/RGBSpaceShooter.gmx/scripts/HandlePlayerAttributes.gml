var from_scratch = argument[0]

if (from_scratch) {
    global.player_weapon = global.PLAYER_SINGLE_LASER
    global.player_weapon_special = global.SPECIAL_WEAPON_1
    global.player_lives = 2
    global.player_score = 0
    global.player_hull = 100
    global.player_hull_max = 100
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
    global.player_weapon = ini_read_real("player-state", "weapon", global.PLAYER_SINGLE_LASER)
    global.player_weapon_special = ini_read_real("player-state", "weapon_special", global.SPECIAL_WEAPON_1)
    global.player_lives = ini_read_real("player-state", "lives", 2)
    global.player_score = ini_read_real("player-state", "score", 0)
    global.player_hull = ini_read_real("player-state", "hull", 100)
    global.player_hull_max = ini_read_real("player-state", "hull_max", 100)
    global.player_blue_energy = ini_read_real("player-state", "blue_energy", 200)
    global.player_blue_energy_base = ini_read_real("player-state", "blue_energy_base", 200)
    global.player_red_energy = ini_read_real("player-state", "red_energy", 200)
    global.player_red_energy_base = ini_read_real("player-state", "red_energy_base", 200)
    global.player_green_energy = ini_read_real("player-state", "green_energy", 200)
    global.player_green_energy_base = ini_read_real("player-state", "green_energy_base", 200)
    global.player_rgb_energy = ini_read_real("player-state", "rgb_energy", 0)
    global.player_rgb_energy_base = ini_read_real("player-state", "rgb_energy_base", 200)
    ini_close()
}


