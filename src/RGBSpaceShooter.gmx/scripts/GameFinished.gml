var state = 0

var aurora = LoadPlanetState(global.PLANET_AURORA_LAND)
var mirandha = LoadPlanetState(global.PLANET_MIRANDHA_LAND)
var nedomia = LoadPlanetState(global.PLANET_NEDOMIA_V_LAND)
var spacelab = LoadPlanetState(global.PLANET_SPACE_LAB_LAND)
var irania = LoadPlanetState(global.PLANET_IRANIA_LAND)

if (aurora && mirandha && nedomia && spacelab && irania) {
    room_goto(room_credits)
}

