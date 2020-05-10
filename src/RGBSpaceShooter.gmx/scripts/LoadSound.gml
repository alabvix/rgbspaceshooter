ini_open(global.FILE_GAME_SETTINGS);
var sound = ini_read_real("settings", "sound", true);
ini_close()
return sound
