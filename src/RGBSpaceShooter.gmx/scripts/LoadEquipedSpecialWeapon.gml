ini_open(global.FILE_GAME_SETTINGS)
var w = ini_read_real("player-state", "equiped-weapon", 0);
ini_close()
show_debug_message("special weapon saved:" + string(w))
return w
