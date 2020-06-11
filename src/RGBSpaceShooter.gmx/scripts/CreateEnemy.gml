// argument[0]: enemy type
// argument[1]: grouped by color

var centro_room_x = room_width/2;
var centro_room_y = room_height/2;

var enemy_type = argument[0]
var a_color = argument[1]

if (enemy_type == global.ENEMY_TANK_1) {
    var color = HandleColor(a_color)
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
    var color = HandleColor(a_color)
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

if (enemy_type == global.ENEMY_SHIP_2) {
    var color = HandleColor(a_color)
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
    var color = HandleColor(a_color) 
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
    
    //show_debug_message("Ship 4 instance created")
}

if (enemy_type == global.ENEMY_SHIP_5) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-71, -1600)
    instance_create(vx, vy, obj_green_ship_5)
    //show_debug_message("Ship 5 instance created")
}

if (enemy_type == global.ENEMY_SHIP_6) {
    var color = HandleColor(a_color) 
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
    //show_debug_message("Ship 6 instance created")
}

if (enemy_type == global.ENEMY_SHIP_7) {
    var color = HandleColor(a_color)
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
    var color = HandleColor(a_color)
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

// this type create all once
if (enemy_type == global.ENEMY_SHIP_9) {
    var color = HandleColor(a_color)
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
 
if (enemy_type == global.SPECIAL_CARGO_SHIP) {
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -200)
    instance_create(vx, vy, obj_cargo_ship)
} 


if (enemy_type == global.ENEMY_BOMB ) {
    var color = HandleColor(a_color) 
    if (color == 1) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-100, -1600)
        var i = instance_create(vx, vy, obj_red_bomb)
        
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

if (enemy_type == global.ENEMY_ALIEN ) {
    var color = irandom_range(1,1) 
    var vx = obj_player_ship.x
    
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

if (enemy_type == global.ENEMY_MONSTER_1 ) {
    var color = HandleColor(a_color)
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
    var color = HandleColor(a_color)
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
    var color = HandleColor(a_color)
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
    var color = irandom_range(1,1) 
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

if (enemy_type == global.ENEMY_MONSTER_6_RED) {
    vx = 48
    vy = -68
    instance_create(vx, vy, obj_red_monster_6)
}

if (enemy_type == global.ENEMY_MONSTER_6_GREEN) {
    vx = 48
    vy = -68
    instance_create(vx, vy, obj_red_monster_6)
}

if (enemy_type == global.ENEMY_MONSTER_6_BLUE) {
    vx = 48
    vy = -68
    instance_create(vx, vy, obj_red_monster_6)
}

if (enemy_type == global.SECOND_WAVE_ENEMY_METEOR) {
     //var type = irandom_range(1,2) 
     vx = irandom_range(1, room_width)
     vy = -130
     //if (type == 1) {
        instance_create(vx, vy, obj_meteor_1)
     //} else {
       // instance_create(vx, vy, obj_meteor_2)
     //}
}

