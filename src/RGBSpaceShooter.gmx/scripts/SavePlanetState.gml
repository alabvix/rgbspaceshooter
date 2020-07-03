ini_open(global.FILE_GAME_SETTINGS)

switch (global.selected_planet) {
    case global.PLANET_AURORA_LAND:
        ini_write_real("planet-state", "aurora", 1);
        break;
    case global.PLANET_MIRANDHA_LAND:
        ini_write_real("planet-state", "mirandha", 1);
        break;
    case global.PLANET_NEDOMIA_V_LAND:
        ini_write_real("planet-state", "nedomia-v", 1);
        break
    case global.PLANET_SPACE_LAB_LAND:
        ini_write_real("planet-state", "space-lab", 1);
        break;
}     

ini_close()
