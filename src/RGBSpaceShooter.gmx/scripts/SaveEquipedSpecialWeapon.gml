var equiped_weapon = argument[0]

ini_open(global.FILE_GAME_SETTINGS)
ini_write_real("player-state", "equiped-weapon", equiped_weapon);
ini_close()
