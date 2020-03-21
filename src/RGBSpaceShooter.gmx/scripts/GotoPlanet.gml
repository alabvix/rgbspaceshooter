var planet = argument[0]
if (planet._planet_name == "aurora") {
    //room_goto(room_planet_aurora_space)
    room_goto(room_planet_aurora_land)
    global.selected_planet = global.PLANET_AURORA_LAND
}
