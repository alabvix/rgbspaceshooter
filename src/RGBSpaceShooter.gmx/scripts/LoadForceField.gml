var force_shield = 0

ini_open(global.FILE_GAME_SETTINGS)
force_shield = ini_read_real("player-state", "force-shield", 0);
ini_close()
return force_shield
