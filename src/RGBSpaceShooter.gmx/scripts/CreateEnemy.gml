///CreateEnemy(_enemyType)

if (_enemy_type == global.ENEMY_BOMB ) {
    var color = irandom_range(1,2) 
    if (color == 1) {
        for (i=0; i < 100; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -1600)
            instance_create(vx, vy, obj_red_bomb)
        }
    }
    if (color == 2) {
         for (i=0; i < 100; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -1600)
            instance_create(vx, vy, obj_blue_bomb)
        }
    }
}

if (_enemy_type == global.ENEMY_SHIP ) {
    var color = irandom_range(1,1) 
    if (color == 1) {
        for (i=0; i < 15; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -600)
            inst = instance_create(vx, vy, obj_red_ship_1)
        }
    }
    if (color == 2) {
         for (i=0; i < 30; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -room_height)
            instance_create(vx, vy, obj_red_ship_1)
        }
    }
}

if (_enemy_type == global.ENEMY_ALIEN ) {
    var color = irandom_range(1,1) 
    if (color == 1) {
        for (i=0; i < 20; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -600)
            z = irandom_range(1,2)
            if (z == 1) {
                vx += 64
                vy += 64
            } else {
                vx -= 64
                vy -= 64
            }
            inst = instance_create(vx, vy, obj_red_alien_1)
        }
    }
    if (color == 2) {
         for (i=0; i < 30; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -room_height)
            instance_create(vx, vy, obj_red_ship_1)
        }
    }
}

if (_enemy_type == global.ENEMY_MONSTER_1 ) {
    var color = irandom_range(1,2) 
    if (color == 1) {
        vx = 200
        vy = -32
        monster = instance_create(vx, vy, obj_red_monster_1)
        with (monster){
            path_start(path0, 8, path_action_continue, 0)
        }
    }
    if (color == 2) {
        vx = 200
        vy = -32
        monster = instance_create(vx, vy, obj_blue_monster_1)
        with (monster){
            path_start(path0, 8, path_action_continue, 0)
        }
    }
}

if (_enemy_type == global.ENEMY_MONSTER_2 ) {
    var color = irandom_range(1,2) 
    if (color == 1) {
        vx = 800
        vy = -32
        monster = instance_create(vx, vy, obj_red_monster_1)
        with (monster){
            path_start(path1, 8, path_action_continue, 0)
        }
    }
    if (color == 2) {
        vx = 800
        vy = -32
        monster = instance_create(vx, vy, obj_blue_monster_1)
        with (monster){
            path_start(path1, 8, path_action_continue, 0)
        }
    }
}


/*
_step_counter ++
show_debug_message ( string(_step_counter))

if (_step_counter < MAX_COUNTER) {
    exit
} else {
    _step_counter = 0
}    
show_debug_message ( "criando inimigos")

if (_enemy_type == ENEMY_MONSTER_RED && ! _monster_red_created) {
    for (i=0; i <ENEMY_MONSTER_RED_TOTAL; i++) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-100, -room_height)
        instance_create(vx, vy, obj_red_monster_1)
    }
    _monster_red_created = true
}

if (_enemy_type == ENEMY_MONSTER_BLUE && ! _monster_blue_created ) {
    for (i=0; i < ENEMY_MONSTER_BLUE_TOTAL; i++) {
       vx = irandom_range(1, room_width)
       vy = irandom_range(-100, -room_height)
       instance_create(vx, vy, obj_blue_monster_1)
    }
    _monster_blue_created = true
}

if (_enemy_type == ENEMY_BOMB ) {
    var color = irandom_range(1,2) 
    if (color == 1) {
        for (i=0; i < 20; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -1600)
            instance_create(vx, vy, obj_red_bomb)
        }
    }
    if (color == 2) {
         for (i=0; i < 30; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -1600)
            instance_create(vx, vy, obj_blue_bomb)
        }
    }
}

if (_enemy_type == ENEMY_SHIP ) {
    var color = irandom_range(1,1) 
    if (color == 1) {
        for (i=0; i < 20; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -600)
            inst = instance_create(vx, vy, obj_red_ship_1)
        }
    }
    if (color == 2) {
         for (i=0; i < 30; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -room_height)
            instance_create(vx, vy, obj_red_ship_1)
        }
    }
}

if (_enemy_type == ENEMY_ALIEN ) {
    var color = irandom_range(1,1) 
    if (color == 1) {
        for (i=0; i < 20; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -600)
            z = irandom_range(1,2)
            if (z == 1) {
                vx += 64
                vy += 64
            } else {
                vx -= 64
                vy -= 64
            }
            inst = instance_create(vx, vy, obj_red_alien_1)
        }
    }
    if (color == 2) {
         for (i=0; i < 30; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -room_height)
            instance_create(vx, vy, obj_red_ship_1)
        }
    }
}

can_raise_next_enemy = true

// Others enemies must wait destruction of all enemy monster type
if (_enemy_type == ENEMY_MONSTER_RED ||
    _enemy_type == ENEMY_MONSTER_BLUE ) {
    if ( _monster_red_killed == ENEMY_MONSTER_RED_TOTAL) {
        _monster_red_killed = 0;
        _monster_red_created = false
        //_step_counter = 90
    } else if (_monster_blue_killed == ENEMY_MONSTER_BLUE_TOTAL) {
        _monster_blue_killed = 0;
        _monster_blue_created = false
        //_step_counter = 90
    } else {
       can_raise_next_enemy  = false     
    }
}

_enemy_type = ENEMY_BOMB

if (can_raise_next_enemy ) {
    _enemy_type = irandom_range(1, _total_enemies)
    //alarm[0] = _alarm_time
}
*/
