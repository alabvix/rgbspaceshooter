_counter_create_enemy += 1 
if ( round(_counter_create_enemy) == 10) {
    if (_enemy_type == global.SUB_BOSS) {
        _counter_create_enemy = 0
        return true
    }

    if (_enemy_type == global.ENEMY_MONSTER_1) {
       if (_total_monsters_created < global.TOTAL_MONSTERS_1 ) {
           CreateEnemy(_enemy_type)    
           _total_monsters_created ++;
           _can_create_enemy = false
       } 
       if (_total_monster_killed == global.TOTAL_MONSTERS_1) {
           _total_monsters_created = 0
           _total_monster_killed = 0
           _can_create_enemy = true
       }
    }
    
    if (_enemy_type == global.ENEMY_MONSTER_2) {
       if (_total_monsters_2_created < global.TOTAL_MONSTERS_2 ) {
           CreateEnemy(_enemy_type)    
           _total_monsters_2_created ++;
           _can_create_enemy = false
       } 
       if (_total_monster_2_killed == global.TOTAL_MONSTERS_2) {
           _total_monsters_2_created = 0
           _total_monster_2_killed = 0
           _can_create_enemy = true
       }
    }
    
    if (_enemy_type == global.ENEMY_SHIP_1) {
        if (_total_ship_1_created < global.TOTAL_SHIPS_1) {
            CreateEnemy(_enemy_type)    
            _total_ship_1_created ++;
            _can_create_enemy = false
        }
        if (_total_ship_1_destroyed == global.TOTAL_SHIPS_1) {
            _total_ship_1_destroyed = 0
            _total_ship_1_created = 0
            _can_create_enemy = true
        }
    }
    
    if (_enemy_type == global.ENEMY_SHIP_2) {
        if (_total_ship_2_created < global.TOTAL_SHIPS_2) {
            CreateEnemy(_enemy_type)    
            _total_ship_2_created ++
           // show_debug_message("Ships 2 created:" + string(_total_ship_2_created))
            _can_create_enemy = false
        }
        if (_total_ship_2_destroyed == global.TOTAL_SHIPS_2) {
            _total_ship_2_destroyed = 0
            _total_ship_2_created = 0
            _can_create_enemy = true
        }
    }
    
    if (_enemy_type == global.ENEMY_SHIP_3) {
        if (_total_ship_3_created < global.TOTAL_SHIPS_3) {
            CreateEnemy(_enemy_type)    
            _total_ship_3_created ++
           // show_debug_message("Ships 3 created:" + string(_total_ship_3_created))
            _can_create_enemy = false
        }
        if (_total_ship_3_destroyed == global.TOTAL_SHIPS_3) {
            _total_ship_3_destroyed = 0
            _total_ship_3_created = 0
            _can_create_enemy = true
        }
    }
    
    if (_enemy_type == global.ENEMY_SHIP_4) {
        if (_total_ship_4_created < global.TOTAL_SHIPS_4) {
            CreateEnemy(_enemy_type)    
            _total_ship_4_created ++
            //show_debug_message("Ships 4 created:" + string(_total_ship_4_created))
            _can_create_enemy = false
        }
        if (_total_ship_4_destroyed == global.TOTAL_SHIPS_4) {
            _total_ship_4_destroyed = 0
            _total_ship_4_created = 0
            _can_create_enemy = true
        }
    }
    
    if (_enemy_type == global.ENEMY_SHIP_5) {
        if (_total_ship_5_created < global.TOTAL_SHIPS_5) {
            CreateEnemy(_enemy_type)    
            _total_ship_5_created ++
           // show_debug_message("Ships 4 created:" + string(_total_ship_5_created))
            _can_create_enemy = false
        }
        if (_total_ship_5_destroyed == global.TOTAL_SHIPS_5) {
            _total_ship_5_destroyed = 0
            _total_ship_5_created = 0
            _can_create_enemy = true
        }
    }
    
    if (_enemy_type == global.ENEMY_SHIP_6) {
        if (_total_ship_6_created < global.TOTAL_SHIPS_6) {
            CreateEnemy(_enemy_type)    
            _total_ship_6_created ++
            //show_debug_message("Ships 6 created:" + string(_total_ship_6_created))
            _can_create_enemy = false
        }
        if (_total_ship_6_destroyed == global.TOTAL_SHIPS_6) {
            _total_ship_6_destroyed = 0
            _total_ship_6_created = 0
            _can_create_enemy = true
        }
    }
    
    if (_enemy_type == global.ENEMY_BOMB) {
        if (_total_bomb_created < global.TOTAL_BOMBS) {
            CreateEnemy(_enemy_type)    
            _total_bomb_created ++;
            _can_create_enemy = false
        }
        if (_total_bomb_destroyed == global.TOTAL_BOMBS) {
            _total_bomb_destroyed = 0
            _total_bomb_created = 0
            _can_create_enemy = true
        }
    }
    
    if (_enemy_type == global.ENEMY_ALIEN) {
        if (_total_alien_created < global.TOTAL_ALIEN) {
            CreateEnemy(_enemy_type)    
            _total_alien_created ++;
            _can_create_enemy = false
        }
        if (_total_alien_destroyed == global.TOTAL_ALIEN) {
            _total_alien_destroyed = 0
            _total_alien_created = 0
            _can_create_enemy = true
        }
    }
    
   // show_debug_message("Can create enemy: " + string(_can_create_enemy))
    
    // Determine enemy type
    _counter_create_enemy = 0
    if (_can_create_enemy) {
       _enemy_index ++
       if (_enemy_index == array_length_2d(global.STAGE_ENEMIES, global.selected_planet)){
          _enemy_index = 0
       }
       _enemy_type = global.STAGE_ENEMIES[global.selected_planet, _enemy_index]
       show_debug_message("Creating enemy of: " + string(_enemy_type))
    }
    
}
