var sound_on = argument[0]
ini_open(global.FILE_GAME_SETTINGS)
ini_write_real("settings", "sound", sound_on);
ini_close()

