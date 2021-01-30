ini_open(global.FILE_GAME_SETTINGS)

ini_write_real("settings", "game-saved", 0);
ini_write_real("planet-state", "aurora", 0);
ini_write_real("planet-state", "mirandha", 0);
ini_write_real("planet-state", "nedomia-v", 0);
ini_write_real("planet-state", "space-lab", 0);
ini_write_real("planet-state", "irania", 0);
ini_write_real("player-state", "score", 0);



ini_close()
