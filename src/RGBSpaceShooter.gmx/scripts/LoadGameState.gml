ini_open(global.FILE_GAME_SETTINGS)

//global.player_weapon = ini_read_real("player-state", "weapon", global.player_weapon);
//global.player_lives = ini_read_real("player-state", "lives", global.player_lives);
global.player_score = ini_read_real("player-state", "score", global.player_score);
//global.player_blue_energy_base = ini_read_real("player-state", "blue_energy_base", global.player_blue_energy_base);
//global.player_red_energy_base = ini_read_real("player-state", "red_energy_base", global.player_red_energy_base);
//global.player_green_energy_base = ini_read_real("player-state", "green_energy_base", global.player_green_energy_base);
//global.player_rgb_energy_base = ini_read_real("player-state", "rgb_energy_base", global.player_rgb_energy_base);
//global.player_shield = ini_read_real("player-state", "shield", global.player_shield);

global.option_difficulty_level = ini_read_real("settings", "difficulty", global.option_difficulty_level);
ini_close()
