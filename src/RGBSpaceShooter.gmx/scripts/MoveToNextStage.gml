
var current_place = global.selected_planet

switch (current_place) {
    case global.PLANET_AURORA_SPACE:
        global.selected_planet = global.PLANET_AURORA_LAND
        room_goto(room_planet_aurora_land)
        break
}
