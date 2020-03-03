var planet = 0;
switch (global.selected_planet) {
    case 1:
        planet = obj_planet_aurora
        break;
    case 2:
        planet = obj_planet_mirandha
        break;
    case 3:
        planet = obj_planet_nedomia_v
        break;        
}

with (obj_player_shio_selector) {
    move_towards_point( planet.x, planet.y, 6 );
}
