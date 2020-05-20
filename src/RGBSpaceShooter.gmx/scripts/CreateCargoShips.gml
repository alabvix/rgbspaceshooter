_counter_create_cargo_ships += 1 
if (round(_counter_create_cargo_ships) == 200) {
    CreateEnemy(global.SPECIAL_CARGO_SHIP, false) 
    _counter_create_cargo_ships = 0
}

