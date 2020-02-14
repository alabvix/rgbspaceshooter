///DefineGlobals

// Game States
global.GAME_STATE_MAIN_MENU      = 1
global.GAME_STATE_SELECT_PLANET  = 2
global.GAME_STATE_PLAY           = 3
global.GAME_STATE_SHIP_DESTROYED = 4
global.GAME_STATE_GAME_OVER      = 99

global.game_state = global.GAME_STATE_MAIN_MENU


// Enemy Types
global.ENEMY_ALIEN        = 1
global.ENEMY_SHIP         = 2
global.ENEMY_BOMB         = 3
global.ENEMY_MONSTER_1    = 4
global.ENEMY_MONSTER_2    = 5
global.ENEMY_SHIP_2       = 6
global.ENEMY_SHIP_3       = 7

global.TOTAL_MONSTERS_1 = 7 
global.TOTAL_MONSTERS_2 = 7
global.TOTAL_SHIPS      = 15
global.TOTAL_BOMBS      = 30
global.TOTAL_ALIEN      = 20
global.TOTAL_SHIPS_2    = 1
global.TOTAL_SHIPS_3    = 6

// enemies in second wave
global.ENEMY_METEOR = 20
global.TOTAL_METEORS= 2

global.game_stage = 1

// Enemy Waves on planets
global.STAGE_ENEMIES[1,0] = global.ENEMY_SHIP_3 //global.ENEMY_SHIP //global.ENEMY_MONSTER_1 //global.ENEMY_SHIP_2
global.STAGE_ENEMIES[1,1] = global.ENEMY_BOMB
global.STAGE_ENEMIES[1,2] = global.ENEMY_MONSTER_1
global.STAGE_ENEMIES[1,3] = global.ENEMY_SHIP_3
global.STAGE_ENEMIES[1,4] = global.ENEMY_SHIP
global.STAGE_ENEMIES[1,5] = global.ENEMY_MONSTER_2
global.STAGE_ENEMIES[1,6] = global.ENEMY_ALIEN

global.selected_planet = 0

// player
global.player_lives = 2


