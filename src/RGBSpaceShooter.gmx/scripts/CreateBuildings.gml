_counter_create_building ++

if (_counter_create_building == 20) {
    var bx = irandom_range(64, room_width - 64)
    var by = irandom_range(-64, -164)
    build = instance_create(bx, by, obj_aurora_building_1)
    _counter_create_building = 0
}

