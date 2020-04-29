ini_open(global.FILE_GAME_SETTINGS);
var diff_level = ini_read_real( "settings", "difficulty", 1);
ini_close()
return diff_level
