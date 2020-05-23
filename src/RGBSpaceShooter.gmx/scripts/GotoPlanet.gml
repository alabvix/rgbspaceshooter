var planet_id = argument[0]

global.selected_planet = planet_id

switch (planet_id) {
    case global.PLANET_AURORA_SPACE:
        //room_goto(room_planet_aurora_space)
        //global.selected_planet = global.PLANET_AURORA_SPACE
        room_goto(room_planet_aurora_land)
        break
    case global.PLANET_MIRANDHA_SPACE:
        break
    case global.PLANET_NEDOMIA_V_SPACE:
        break
    case global.PLANET_SPACE_LAB:
        room_goto(room_space_lab)
        break;           
}
