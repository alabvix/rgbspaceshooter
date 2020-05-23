if (instance_exists(obj_cargo_ship)) {
    exit
}

_counter_create_cargo_ships += 1 
show_debug_message("Cargo ship counter: " + string(_counter_create_cargo_ships))
if (_counter_create_cargo_ships == 300) {
    show_debug_message("Cargo ship created")
    CreateEnemy(global.SPECIAL_CARGO_SHIP, false) 
    _counter_create_cargo_ships = 0
}

