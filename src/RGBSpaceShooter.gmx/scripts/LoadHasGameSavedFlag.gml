ini_open(global.FILE_GAME_SETTINGS);
var flag = ini_read_real("settings", "game-saved", 0);
ini_close()
return flag
