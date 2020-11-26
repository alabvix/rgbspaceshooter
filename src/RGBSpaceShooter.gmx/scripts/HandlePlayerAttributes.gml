var from_scratch = argument[0] // true, false

if (from_scratch) {
    ResetPlayerAttributes()
} else {
    ini_open(global.FILE_GAME_SETTINGS);
    LoadGameState()
    ini_close()
}


