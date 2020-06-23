var centro_room_x = room_width/2;
var centro_room_y = room_height/2;

var planet = 0

switch (global.selected_planet) {
    case global.PLANET_AURORA_SPACE:
        planet = instance_create(centro_room_x, -60, obj_planet_aurora)
        break
   case global.PLANET_SPACE_LAB:
        planet = instance_create(centro_room_x, -60, obj_space_lab)
        break    
}

return planet
