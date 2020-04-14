var diff_level = argument[0]
ini_open(global.FILE_GAME_SETTINGS)
ini_write_real("settings", "difficulty", diff_level);
ini_close()


