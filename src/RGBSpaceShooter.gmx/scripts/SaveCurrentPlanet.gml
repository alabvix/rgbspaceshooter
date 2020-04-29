var current_planet = argument[0]
ini_open(global.FILE_GAME_SETTINGS)
ini_write_real("settings", "current-planet", current_planet);
ini_close()

