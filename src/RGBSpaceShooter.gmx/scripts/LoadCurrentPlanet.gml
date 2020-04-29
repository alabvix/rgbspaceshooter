ini_open(global.FILE_GAME_SETTINGS);
var planet = ini_read_real("settings", "current-planet", 0);
ini_close()
return planet
