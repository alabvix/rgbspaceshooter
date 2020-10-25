var planet = 0;
switch (global.selected_planet) {
    case global.PLANET_AURORA_SPACE:
        planet = obj_planet_aurora
        break;
    case global.PLANET_MIRANDHA_SPACE:
        planet = obj_planet_mirandha
        break;
    case global.PLANET_SPACE_LAB:
        planet = obj_space_lab
        break;        
    case global.PLANET_IRANIA_SPACE:
        planet = obj_planet_irania
        break;
    case global.PLANET_NEDOMIA_V_SPACE:
        planet = obj_planet_nedomia_v    
        break;            
}

with (obj_player_ship) {
    move_towards_point( planet.x, planet.y, 6 );
}
