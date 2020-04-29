ini_open(global.FILE_GAME_SETTINGS)
ini_write_real("player-state", "weapon", global.player_weapon);
ini_write_real("player-state", "weapon_special", global.player_weapon_special);
ini_write_real("player-state", "lives", global.player_lives);
ini_write_real("player-state", "score", global.player_score);
ini_write_real("player-state", "hull", global.player_hull);
ini_write_real("player-state", "hull_max", global.player_hull_max);
ini_write_real("player-state", "blue_energy", global.player_blue_energy);
ini_write_real("player-state", "blue_energy_base", global.player_blue_energy_base);
ini_write_real("player-state", "red_energy", global.player_red_energy);
ini_write_real("player-state", "red_energy_base", global.player_red_energy_base);
ini_write_real("player-state", "green_energy", global.player_green_energy);
ini_write_real("player-state", "green_energy_base", global.player_green_energy_base);
ini_write_real("player-state", "rgb_energy", global.player_rgb_energy);
ini_write_real("player-state", "rgb_energy_base", global.player_rgb_energy_base);
ini_close()
