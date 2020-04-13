switch (global.option_difficulty_level) {
    case global.difficulty_level_easy:
        global.counter_create_enemy_limit = 50
        global.TOTAL_SHIPS_1 = 3
        global.TOTAL_SHIPS_2 = 2
        global.TOTAL_SHIPS_3 = 3
        global.TOTAL_SHIPS_4 = 2
        global.TOTAL_SHIPS_5 = 3
        global.TOTAL_SHIPS_6 = 4
        global.TOTAL_MONSTERS_1 = 3 
        global.TOTAL_MONSTERS_2 = 3
        global.TOTAL_BOMBS = 7
        global.TOTAL_ALIEN = 8
        global.TOTAL_TANK_1 = 2
        global.TOTAL_METEORS= 0
        global.BOSS_1_HP_MAX = 300
        break
    case global.difficulty_level_normal:    
        global.counter_create_enemy_limit = 20
        global.TOTAL_SHIPS_1 = 4
        global.TOTAL_SHIPS_2 = 2
        global.TOTAL_SHIPS_3 = 3
        global.TOTAL_SHIPS_4 = 3
        global.TOTAL_SHIPS_5 = 3
        global.TOTAL_SHIPS_6 = 5
        global.TOTAL_MONSTERS_1 = 5 
        global.TOTAL_MONSTERS_2 = 5
        global.TOTAL_BOMBS = 15
        global.TOTAL_ALIEN = 15
        global.TOTAL_TANK_1 = 4        
        global.BOSS_1_HP_MAX = 500
        break
   case global.difficulty_level_hard:    
        global.counter_create_enemy_limit = 10
        global.TOTAL_SHIPS_1 = 6
        global.TOTAL_SHIPS_2 = 2
        global.TOTAL_SHIPS_3 = 6
        global.TOTAL_SHIPS_4 = 5
        global.TOTAL_SHIPS_5 = 5
        global.TOTAL_SHIPS_6 = 8
        global.TOTAL_MONSTERS_1 = 7 
        global.TOTAL_MONSTERS_2 = 7
        global.TOTAL_BOMBS = 30
        global.TOTAL_ALIEN = 20
        global.TOTAL_TANK_1 = 6    
        global.TOTAL_METEORS= 3
        global.BOSS_1_HP_MAX = 800
        break
}
