ini_open(global.FILE_GAME_SETTINGS)
global.player_score = ini_read_real("player-state", "score", global.player_score);
ini_close()
