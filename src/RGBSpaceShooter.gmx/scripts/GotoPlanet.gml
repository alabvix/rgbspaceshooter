//var planet_id = global.PLANET_MIRANDHA_LAND //argument[0]
var planet_id = argument[0]

global.selected_planet = planet_id

switch (planet_id) {
    case global.PLANET_AURORA_SPACE:
        room_goto(room_planet_aurora_space)
        break
    case global.PLANET_AURORA_LAND:
        room_goto(room_planet_aurora_land)
        break    
    case global.PLANET_MIRANDHA_SPACE:
        room_goto(room_planet_mirandha_space)
        break
   case global.PLANET_MIRANDHA_LAND:
        room_goto(room_planet_mirandha_land)
        break    
    case global.PLANET_NEDOMIA_V_SPACE:
        room_goto(room_planet_nedomia_space)
        break
    case global.PLANET_SPACE_LAB:
        room_goto(room_space_lab)
        break;           
    case global.PLANET_IRANIA_SPACE:
        room_goto(room_planet_irania_space)
        break;                   
}
