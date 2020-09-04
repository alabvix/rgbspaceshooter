switch (global.selected_planet) {
    case global.PLANET_AURORA_SPACE:
        global.selected_planet = global.PLANET_AURORA_LAND
        room_goto(room_planet_aurora_land)
        break
    case global.PLANET_SPACE_LAB:
        global.selected_planet = global.PLANET_SPACE_LAB_LAND
        room_goto(room_planet_splace_lab_land)
        break
    case global.PLANET_MIRANDHA_SPACE:
        global.selected_planet = global.PLANET_MIRANDHA_LAND
        room_goto(room_planet_mirandha_land)
        break        
    case global.PLANET_NEDOMIA_V_SPACE:
        global.selected_planet = global.PLANET_NEDOMIA_V_LAND
        room_goto(room_planet_nedomia_land)
        break
    case global.PLANET_IRANIA_SPACE:
        global.selected_planet = global.PLANET_IRANIA_LAND
        room_goto(room_planet_irania_land)
        break                        
}
