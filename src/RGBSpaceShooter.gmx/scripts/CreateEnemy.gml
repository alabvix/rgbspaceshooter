// argument[0]: enemy type

var centro_room_x = room_width/2;
var centro_room_y = room_height/2;

if (argument[0] == global.ENEMY_TANK_1) {
    var color = irandom_range(1,3)
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

if (argument[0] == global.ENEMY_SHIP_7) {
    var color = irandom_range(1,3)
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
 
if (argument[0] == global.SPECIAL_CARGO_SHIP) {
    var color = irandom_range(1,3) 
    vx = irandom_range(1, room_width)
    vy = irandom_range(-100, -200)
    switch(color) {
        case 1:
            instance_create(vx, vy, obj_red_cargo_ship)
            break;
        case 2:
            instance_create(vx, vy, obj_green_cargo_ship)
            break;    
        case 3:
            instance_create(vx, vy, obj_blue_cargo_ship)
            break;        
    }
} 

if (argument[0] == global.ENEMY_SHIP_1 ) {
    var color = irandom_range(1,3) 
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

if (argument[0] == global.ENEMY_SHIP_2) {
    var color = irandom_range(1,3) 
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
    show_debug_message("Ships 2 instance created:")
}

if (argument[0] == global.ENEMY_SHIP_3) {
    var ship3 = instance_create(90, -100, obj_red_ship_3)
    show_debug_message("Ships 3 instance created:")
    with (ship3){
        path_start(path3, 8, path_action_reverse, 0)
    }
}

if (argument[0] == global.ENEMY_SHIP_4) {
    var color = irandom_range(1,3) 
    if (color == 1) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        instance_create(vx, vy, obj_red_ship_4)
    }
    if (color == 2) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        instance_create(vx, vy, obj_green_ship_4)
    }
    if (color == 3) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        instance_create(vx, vy, obj_blue_ship_4)
    }
    show_debug_message("Ship 4 instance created")
}

if (argument[0] == global.ENEMY_SHIP_5) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        instance_create(vx, vy, obj_green_ship_5)

    /*
    var color = irandom_range(1,3) 
    if (color == 1) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        instance_create(vx, vy, obj_red_ship_5)
    }
    if (color == 2) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        instance_create(vx, vy, obj_green_ship_5)
    }
    if (color == 3) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-71, -1600)
        instance_create(vx, vy, obj_blue_ship_5)
    }
    */
    show_debug_message("Ship 5 instance created")
}

if (argument[0] == global.ENEMY_SHIP_6) {
    var color = irandom_range(1,3) 
    
    //var path = choose(path_fighter_1, path_fighter_2);
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
    //with (ship){
    //    path_start(path, 8, path_action_stop, 0)
    //}
    show_debug_message("Ship 6 instance created")
}

if (argument[0] == global.ENEMY_BOMB ) {
    var color = irandom_range(1,2) 
    if (color == 1) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-100, -1600)
        instance_create(vx, vy, obj_red_bomb)
    }
    if (color == 2) {
        vx = irandom_range(1, room_width)
        vy = irandom_range(-100, -1600)
        instance_create(vx, vy, obj_blue_bomb)
    }
}

if (argument[0] == global.ENEMY_ALIEN ) {
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

if (argument[0] == global.ENEMY_MONSTER_1 ) {
    var color = irandom_range(1,3) 
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
    if (color == 3) {
        vx = 200
        vy = -32
        monster = instance_create(vx, vy, obj_green_monster_1)
        with (monster){
            path_start(path0, 8, path_action_continue, 0)
        }
    }
}

if (argument[0] == global.ENEMY_MONSTER_2 ) {
    var color = irandom_range(1,3) 
    if (color == 1) {
        vx = 800
        vy = -32
        monster = instance_create(vx, vy, obj_red_monster_2)
        with (monster){
            path_start(path1, 8, path_action_continue, 0)
        }
    }
    if (color == 2) {
        vx = 800
        vy = -32
        monster = instance_create(vx, vy, obj_blue_monster_2)
        with (monster){
            path_start(path1, 8, path_action_continue, 0)
        }
    }
    if (color == 3) {
        vx = 800
        vy = -32
        monster = instance_create(vx, vy, obj_green_monster_2)
        with (monster){
            path_start(path1, 8, path_action_continue, 0)
        }
    }
}

if (argument[0] ==global.ENEMY_MONSTER_3) {
    var color = irandom_range(1,3) 
    if (color == 1) {
        vx = 448
        vy = -32
        monster = instance_create(vx, vy, obj_red_monster_3)
        with (monster){
            path_start(path_monster_3, 8, path_action_continue, 0)
        }
    }
    if (color == 2) {
        vx = 448
        vy = -32
        monster = instance_create(vx, vy, obj_blue_monster_3)
        with (monster){
            path_start(path_monster_3, 8, path_action_continue, 0)
        }
    }
    if (color == 3) {
        vx = 448
        vy = -32
        monster = instance_create(vx, vy, obj_green_monster_3)
        with (monster){
            path_start(path_monster_3, 8, path_action_continue, 0)
        }
    }
    
}

if (argument[0] == global.SECOND_WAVE_ENEMY_METEOR) {
     //var type = irandom_range(1,2) 
     vx = irandom_range(1, room_width)
     vy = -130
     //if (type == 1) {
        instance_create(vx, vy, obj_meteor_1)
     //} else {
       // instance_create(vx, vy, obj_meteor_2)
     //}
}

