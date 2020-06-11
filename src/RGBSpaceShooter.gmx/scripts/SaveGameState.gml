ini_open(global.FILE_GAME_SETTINGS)

// Save Player Data
ini_write_real("player-state", "weapon", global.player_weapon);
ini_write_real("player-state", "lives", global.player_lives);
ini_write_real("player-state", "score", global.player_score);
ini_write_real("player-state", "shield", global.player_shield);
ini_write_real("player-state", "blue_energy_base", global.player_blue_energy_base);
ini_write_real("player-state", "red_energy_base", global.player_red_energy_base);
ini_write_real("player-state", "green_energy_base", global.player_green_energy_base);
ini_write_real("player-state", "rgb_energy_base", global.player_rgb_energy_base);

// Game data
ini_write_real("settings", "game-saved", 1);
ini_write_real("settings", "difficulty", global.option_difficulty_level);

ini_close()
