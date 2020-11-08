// argument[0]: enemy type
var enemy_type = argument[0]

var centro_room_x = room_width/2;
var centro_room_y = room_height/2;

var color = GetColor()

if (enemy_type == global.ENEMY_TANK_1) {
    var bx = irandom_range(0, room_width - 80)
    var by = irandom_range(-10, -400)
    switch(color) {
        case 1:
            tank = instance_create(bx, by, obj_red_tank_1)
            canon = instance_create(bx, by, obj_red_cannon_1)
            variable_instance_set(tank, "_my_canon", canon)
            break;
        case 2:
            tank = instance_create(bx, by, obj_green_tank_1)
            canon = instance_create(bx, by, obj_green_cannon_1)
            variable_instance_set(tank, "_my_canon", canon)
            break;    
        case 3:
            tank = instance_create(bx, by, obj_blue_tank_1)
            canon = instance_create(bx, by, obj_blue_cannon_1)
            variable_instance_set(tank, "_my_canon", canon)
            break;        
    }
}

if (enemy_type == global.ENEMY_SHIP_1 ) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -600)
    switch(color) {
        case 1:
            instance_create(vx, vy, obj_red_ship_1)
            break;
        case 2:
            instance_create(vx, vy, obj_green_ship_1)
            break;    
        case 3:
            instance_create(vx, vy, obj_blue_ship_1)
            break;        
    }
}

if (enemy_type == global.ENEMY_SHIP_1_RED) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -600)
    instance_create(vx, vy, obj_red_ship_1)
}

if (enemy_type == global.ENEMY_SHIP_1_GREEN) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -600)
    instance_create(vx, vy, obj_green_ship_1)
}

if (enemy_type == global.ENEMY_SHIP_1_BLUE) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -600)
    instance_create(vx, vy, obj_blue_ship_1)
}

if (enemy_type == global.ENEMY_SHIP_2) {
    vx = irandom_range(128, room_width-300)
    vy = irandom_range(-130, -430)
    switch(color) {
        case 1:
            instance_create(vx, vy, obj_red_ship_2)
            break;
        case 2:
            instance_create(vx, vy, obj_green_ship_2)
            break;    
        case 3:
            instance_create(vx, vy, obj_blue_ship_2)
            break;        
    }
    //show_debug_message("Ships 2 instance created:")
}

if (enemy_type == global.ENEMY_SHIP_3) {
    var ship3 = instance_create(90, -100, obj_red_ship_3)
    //show_debug_message("Ships 3 instance created:")
    with (ship3){
        path_start(path3, 8, path_action_reverse, 0)
    }
}

if (enemy_type == global.ENEMY_SHIP_4) {
    var ship = 0
    if (color == 1) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        ship = instance_create(vx, vy, obj_red_ship_4)
    }
    if (color == 2) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        ship = instance_create(vx, vy, obj_green_ship_4)
    }
    if (color == 3) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        ship = instance_create(vx, vy, obj_blue_ship_4)
    }
    with(ship){
        _speed_y = irandom_range(3,6)
    }
}

if (enemy_type == global.ENEMY_SHIP_4_RED) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-71, -1600)
    ship = instance_create(vx, vy, obj_red_ship_4)
    with(ship){
        _speed_y = irandom_range(3,6)
    }
}

if (enemy_type == global.ENEMY_SHIP_4_GREEN) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-71, -1600)
    ship = instance_create(vx, vy, obj_green_ship_4)
    with(ship){
        _speed_y = irandom_range(3,6)
    }
}

if (enemy_type == global.ENEMY_SHIP_4_BLUE) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-71, -1600)
    ship = instance_create(vx, vy, obj_blue_ship_4)
    with(ship){
        _speed_y = irandom_range(3,6)
    }
}

if (enemy_type == global.ENEMY_SHIP_5) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-71, -1600)
    instance_create(vx, vy, obj_green_ship_5)
}

if (enemy_type == global.ENEMY_SHIP_6) {
    var ship = 0
    if (color == 1) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -90)
        ship = instance_create(vx, vy, obj_red_ship_6)

    }
    if (color == 2) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -90)
        ship = instance_create(vx, vy, obj_green_ship_6)
    }
    if (color == 3) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -90)
        ship = instance_create(vx, vy, obj_blue_ship_6)
    }
}

if (enemy_type == global.ENEMY_SHIP_6_RED) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-71, -90)
    instance_create(vx, vy, obj_red_ship_6)
}

if (enemy_type == global.ENEMY_SHIP_6_GREEN) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-71, -90)
    instance_create(vx, vy, obj_green_ship_6)
}

if (enemy_type == global.ENEMY_SHIP_6_BLUE) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-71, -90)
    instance_create(vx, vy, obj_blue_ship_6)
}

if (enemy_type == global.ENEMY_SHIP_7) {
    if (color == 1) {
        instance_create(global.ship_7_pos_x[global.ship_7_ix], -130, obj_red_ship_7)
    }
    if (color == 2) {
        instance_create(global.ship_7_pos_x[global.ship_7_ix], -130, obj_green_ship_7)
    }
    if (color == 3) {
        instance_create(global.ship_7_pos_x[global.ship_7_ix], -130, obj_blue_ship_7)
    }
    global.ship_7_ix ++
    if (global.ship_7_ix > 2){
        global.ship_7_ix = 0
    } 
}

if (enemy_type == global.ENEMY_SHIP_8) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -200)
    if (color == 1) {
        instance_create(vx, vy, obj_red_ship_8)
    }
    if (color == 2) {
        instance_create(vx, vy, obj_green_ship_8)
    }
    if (color == 3) {
        instance_create(vx, vy, obj_blue_ship_8)
    }
}

if (enemy_type == global.ENEMY_SHIP_8_RED) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -200)
    instance_create(vx, vy, obj_red_ship_8)    
}

if (enemy_type == global.ENEMY_SHIP_8_GREEN) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -200)
    instance_create(vx, vy, obj_green_ship_8)    
}

if (enemy_type == global.ENEMY_SHIP_8_BLUE) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -200)
    instance_create(vx, vy, obj_blue_ship_8)    
}

// this type create all once
if (enemy_type == global.ENEMY_SHIP_9) {
    vx = irandom_range(1, room_width - 200)
    vy = irandom_range(-100, -200)
    if (color == 1) {
       for (i=0; i<global.TOTAL_SHIPS_9; i++) {
            ship = instance_create(vx, vy, obj_red_ship_9)
            vx += 60
       } 
    }
    if (color == 2) {
        for (i=0; i<global.TOTAL_SHIPS_9; i++) {
            ship = instance_create(vx, vy, obj_green_ship_9)
            vx += 60
        } 
    }
    if (color == 3) {
        for (i=0; i<global.TOTAL_SHIPS_9; i++) {
            ship = instance_create(vx, vy, obj_blue_ship_9)
            vx += 60
        } 
    }
}

if (enemy_type == global.ENEMY_SHIP_9_RED) {
    vx = irandom_range(1, room_width - 200)
    vy = irandom_range(-100, -200)
    for (i=0; i<global.TOTAL_SHIPS_9; i++) {
        ship = instance_create(vx, vy, obj_red_ship_9)
        vx += 60
    } 
}

if (enemy_type == global.ENEMY_SHIP_9_GREEN) {
    vx = irandom_range(1, room_width - 200)
    vy = irandom_range(-100, -200)
    for (i=0; i<global.TOTAL_SHIPS_9; i++) {
        ship = instance_create(vx, vy, obj_green_ship_9)
        vx += 60
    } 
}

if (enemy_type == global.ENEMY_SHIP_9_BLUE) {
    vx = irandom_range(1, room_width - 200)
    vy = irandom_range(-100, -200)
    for (i=0; i<global.TOTAL_SHIPS_9; i++) {
        ship = instance_create(vx, vy, obj_blue_ship_9)
        vx += 60
    } 
}

if (enemy_type == global.ENEMY_SHIP_10) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -400)
    if (color == 1) {
        instance_create(vx, vy, obj_red_ship_10)
    }
    if (color == 2) {
        instance_create(vx, vy, obj_green_ship_10)
    }
    if (color == 3) {
        instance_create(vx, vy, obj_blue_ship_10)
    }
}

if (enemy_type == global.ENEMY_SHIP_10_RED) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -400)
    instance_create(vx, vy, obj_red_ship_10)
}

if (enemy_type == global.ENEMY_SHIP_10_GREEN) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -400)
    instance_create(vx, vy, obj_green_ship_10)
}

if (enemy_type == global.ENEMY_SHIP_10_BLUE) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -400)
    instance_create(vx, vy, obj_blue_ship_10)
}

if (enemy_type == global.ENEMY_SHIP_11_RED) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-80, -160)
    instance_create(vx, vy, obj_red_ship_11)
}

if (enemy_type == global.ENEMY_SHIP_11_GREEN) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-80, -160)
    instance_create(vx, vy, obj_green_ship_11)
}

if (enemy_type == global.ENEMY_SHIP_11_BLUE) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-80, -160)
    instance_create(vx, vy, obj_blue_ship_11)
}

if (enemy_type == global.ENEMY_SHIP_12_RED) {
    instance_create(-80, -80, obj_red_ship_12)
}

if (enemy_type == global.ENEMY_SHIP_12_GREEN) {
    instance_create(-80, -80, obj_green_ship_12)
}

if (enemy_type == global.ENEMY_SHIP_12_BLUE) {
    instance_create(-80, -80, obj_blue_ship_12)
}

if (enemy_type == global.ENEMY_SHIP_14_RED) {
    vx = irandom_range(1, room_width)
    vy = -129
    instance_create(vx, vy, obj_red_ship_14)
}

if (enemy_type == global.ENEMY_SHIP_14_GREEN) {
    vx = irandom_range(1, room_width)
    vy = -129
    instance_create(vx, vy, obj_green_ship_14)
}

if (enemy_type == global.ENEMY_SHIP_14_BLUE) {
    vx = irandom_range(1, room_width)
    vy = -129
    instance_create(vx, vy, obj_blue_ship_14)
}

if (enemy_type == global.ENEMY_SHIP_15_RED) {
    vx = irandom_range(1, room_width/2)
    vy = -129
    var s1 = instance_create(vx, vy, obj_red_ship_15)
    var energy = instance_create(s1.x+10, s1.y, obj_dead_energy_bar)
    var s2 = instance_create(energy.x+512+10, s1.y, obj_red_ship_15)
}

if (enemy_type == global.ENEMY_SHIP_15_GREEN) {
    vx = irandom_range(1, room_width/2)
    vy = -129
    var s1 = instance_create(vx, vy, obj_green_ship_15)
    var energy = instance_create(s1.x+10, s1.y, obj_dead_energy_bar)
    var s2 = instance_create(energy.x+512+10, s1.y, obj_green_ship_15)
}

if (enemy_type == global.ENEMY_SHIP_15_BLUE) {
    vx = irandom_range(1, room_width/2)
    vy = -129
    var s1 = instance_create(vx, vy, obj_blue_ship_15)
    var energy = instance_create(s1.x+10, s1.y, obj_dead_energy_bar)
    var s2 = instance_create(energy.x+512+10, s1.y, obj_blue_ship_15)
}

if (enemy_type == global.ENEMY_SHIP_16_RED) {
    instance_create(0, 0, obj_red_ship_16)
}

if (enemy_type == global.ENEMY_SHIP_16_GREEN) {
    instance_create(0, 0, obj_green_ship_16)
}

if (enemy_type == global.ENEMY_SHIP_16_BLUE) {
    instance_create(0, 0, obj_blue_ship_16)
}
 
if (enemy_type == global.SPECIAL_CARGO_SHIP) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -200)
    instance_create(vx, vy, obj_cargo_ship)
} 

if (enemy_type == global.ENEMY_BOMB ) {
    var color = irandom_range(1,3)
    if (color == 1) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-100, -1600)
        instance_create(vx, vy, obj_red_bomb)
    }
    if (color == 2) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-100, -1600)
        instance_create(vx, vy, obj_green_bomb)        
    }
    if (color == 3) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-100, -1600)
        instance_create(vx, vy, obj_blue_bomb)        
    }
}

if (enemy_type == global.ENEMY_BOMB_RED) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -1600)
    instance_create(vx, vy, obj_red_bomb)
}

if (enemy_type == global.ENEMY_BOMB_GREEN) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -1600)
    instance_create(vx, vy, obj_green_bomb)        
}

if (enemy_type == global.ENEMY_BOMB_BLUE) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -1600)
    instance_create(vx, vy, obj_blue_bomb)        
}

if (enemy_type == global.ENEMY_ALIEN ) {
    var vx = obj_player_ship.x
    var color = irandom_range(1,2)
    if (color == 1) {
        //for (i=0; i < global.TOTAL_ALIEN; i++) {
            vy = irandom_range(-100, -600)
            inst = instance_create(vx, vy, obj_red_alien_1)
        //}
    }
    if (color == 2) {
         for (i=0; i < 30; i++) {
            vx = irandom_range(1, room_width)
            vy = irandom_range(-100, -room_height)
            instance_create(vx, vy, obj_red_ship_1)
        }
    }
}

if (enemy_type == global.ENEMY_ARMORED_DRONE) {
    vx = obj_player_ship.x
    vy = -140
    instance_create(vx, vy, obj_armored_drone)
}

if (enemy_type == global.ENEMY_MONSTER_1 ) {
    vx = 200
    vy = -32
    switch (color) {
        case 1:
            monster = instance_create(vx, vy, obj_red_monster_1)
            break
        case 2:
            monster = instance_create(vx, vy, obj_green_monster_1)
            break
        case 3:
            monster = instance_create(vx, vy, obj_blue_monster_1)
            break
    }
    with (monster){
        path_start(path0, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_2 ) {
    vx = 800
    vy = -32
    switch (color) {
        case 1:
            monster = instance_create(vx, vy, obj_red_monster_2)
            break
        case 2:
            monster = instance_create(vx, vy, obj_green_monster_2)
            break
        case 3:
            monster = instance_create(vx, vy, obj_blue_monster_2)
            break
    }
    with (monster){
        path_start(path1, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_3) {
    vx = 448
    vy = -32
    switch (color) {
        case 1:
            monster = instance_create(vx, vy, obj_red_monster_3)
            break
        case 2:
            monster = instance_create(vx, vy, obj_green_monster_3)
            break
        case 3:
            monster = instance_create(vx, vy, obj_blue_monster_3)
            break
    }
    with (monster){
        path_start(path_monster_3, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_4) {
    vx = 448
    vy = -100
    switch (color) {
        case 1:
            monster = instance_create(vx, vy, obj_red_monster_4)
            break
        case 2:
            monster = instance_create(vx, vy, obj_green_monster_4)
            break
        case 3:
            monster = instance_create(vx, vy, obj_blue_monster_4)
            break
    }
}
vx = 448
vy = -100
if (enemy_type == global.ENEMY_MONSTER_4_RED) {
    monster = instance_create(vx, vy, obj_red_monster_4)
}
if (enemy_type == global.ENEMY_MONSTER_4_GREEN) {
    monster = instance_create(vx, vy, obj_green_monster_4)
}
if (enemy_type == global.ENEMY_MONSTER_4_BLUE) {
    monster = instance_create(vx, vy, obj_blue_monster_4)
}


/*
if (enemy_type == global.ENEMY_BIG_SHIP_1) {
    var front = instance_create(400, -1000, obj_capital_ship_front)
    var middle = instance_create(400, -(1000 + front.sprite_height), obj_capital_ship_middle)
    var middle2 = instance_create(400, -(1000 + front.sprite_height + middle.sprite_height), obj_capital_ship_middle)
    var middle3 = instance_create(400, -(1000 + front.sprite_height + middle.sprite_height * 2), obj_capital_ship_middle)
    var middle4 = instance_create(400, -(1000 + front.sprite_height + middle.sprite_height * 3), obj_capital_ship_middle)
    var middle5 = instance_create(400, -(1000 + front.sprite_height + middle.sprite_height * 4), obj_capital_ship_end)        
    
    // canons
    instance_create(middle.x, middle.y, obj_cannon_2_external)
    instance_create(middle2.x, middle2.y, obj_cannon_2_external)
    instance_create(middle3.x, middle3.y, obj_cannon_2_external)
    instance_create(middle4.x, middle4.y, obj_cannon_2_external)

}*/

if (enemy_type == global.ENEMY_MONSTER_6_RED) {
    vx = 48
    vy = -68
    instance_create(vx, vy, obj_red_monster_6)
}

if (enemy_type == global.ENEMY_MONSTER_6_GREEN) {
    vx = 48
    vy = -68
    instance_create(vx, vy, obj_green_monster_6)
}

if (enemy_type == global.ENEMY_MONSTER_6_BLUE) {
    vx = 48
    vy = -68
    instance_create(vx, vy, obj_blue_monster_6)
}

if (enemy_type == global.ENEMY_MONSTER_1_RED) {
    vx = 200
    vy = -32
    var m = instance_create(vx, vy, obj_red_monster_1)
    with (m){
        path_start(path0, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_1_GREEN) {
    vx = 200
    vy = -32
    m = instance_create(vx, vy, obj_green_monster_1)
    with (m){
        path_start(path0, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_1_BLUE) {
    vx = 200
    vy = -32
    m = instance_create(vx, vy, obj_blue_monster_1)
    with (m){
        path_start(path0, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_2_RED) {
    vx = 800
    vy = -32
    monster = instance_create(vx, vy, obj_red_monster_2)
    with (monster){
        path_start(path1, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_2_GREEN) {
    vx = 800
    vy = -32
    monster = instance_create(vx, vy, obj_green_monster_2)
    with (monster){
        path_start(path1, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_2_BLUE) {
    vx = 800
    vy = -32
    monster = instance_create(vx, vy, obj_blue_monster_2)
    with (monster){
        path_start(path1, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_3_RED) {
    vx = 448
    vy = -32
    monster = instance_create(vx, vy, obj_red_monster_3)
    with (monster){
        path_start(path_monster_3, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_3_GREEN) {
    vx = 448
    vy = -32
    monster = instance_create(vx, vy, obj_green_monster_3)
    with (monster){
        path_start(path_monster_3, 8, path_action_continue, 0)
    }
}

if (enemy_type == global.ENEMY_MONSTER_3_BLUE) {
    vx = 448
    vy = -32
    monster = instance_create(vx, vy, obj_blue_monster_3)
    with (monster){
        path_start(path_monster_3, 8, path_action_continue, 0)
    }
}


if (enemy_type == global.SECOND_WAVE_ENEMY_METEOR) {
     vx = irandom_range(1, room_width)
     vy = -130
     instance_create(vx, vy, obj_meteor_1)
}

