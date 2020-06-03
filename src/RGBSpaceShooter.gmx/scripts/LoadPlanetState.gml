// Load a the planet state, wich cab be:
// 0 - Planet not completed by the player
// 1 - Planet completed by the player
var planet_id = argument[0]
var state = 0

ini_open(global.FILE_GAME_SETTINGS)
switch (planet_id) {
    case global.PLANET_AURORA_LAND:
        state = ini_read_real("planet-state", "aurora", 0);
        break;
    case global.PLANET_MIRANDHA_LAND:
        state = ini_read_real("planet-state", "mirandha", 0);
        break;
    case global.PLANET_NEDOMIA_V_LAND:
        state = ini_read_real("planet-state", "nedomia-v", 0);
        break
    case global.PLANET_SPACE_LAB:
        state = ini_read_real("planet-state", "space-lab", 0);
        break;
}     
ini_close()
return state
