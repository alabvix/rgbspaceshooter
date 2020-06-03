ini_open(global.FILE_GAME_SETTINGS)
var has = ini_read_real("game", "has-continue", 1);
ini_close()

if (has == 1) {
    return true
} else {
    return false
}

