ini_open(global.FILE_GAME_SETTINGS);
var m_level = ini_read_real("settings", "music", true);
ini_close()
return m_level
