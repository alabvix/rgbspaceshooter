///DefineGlobals

global.RED   = 1
global.GREEN = 2
global.BLUE  = 3

// Game States
global.GAME_STATE_MAIN_MENU      = 1
global.GAME_STATE_SELECT_PLANET  = 2
global.GAME_STATE_PLAY           = 3
global.GAME_STATE_SHIP_DESTROYED = 4
global.GAME_STATE_GAME_OVER      = 99

global.game_state = global.GAME_STATE_MAIN_MENU


// Enemy Types
global.ENEMY_SHIP_1      = 1
global.ENEMY_SHIP_2      = 2
global.ENEMY_SHIP_3      = 3
global.ENEMY_SHIP_4      = 4
global.ENEMY_SHIP_5      = 5
global.ENEMY_SHIP_6      = 6
global.ENEMY_SHIP_7      = 7
global.ENEMY_SHIP_8      = 8
global.ENEMY_SHIP_9      = 9
global.ENEMY_SHIP_10     = 10
global.ENEMY_MONSTER_1   = 11
global.ENEMY_MONSTER_2   = 12
global.ENEMY_MONSTER_3   = 13
global.ENEMY_MONSTER_4   = 14
global.ENEMY_MONSTER_5   = 15
global.ENEMY_MONSTER_6   = 16
global.ENEMY_MONSTER_7   = 17
global.ENEMY_MONSTER_8   = 18
global.ENEMY_MONSTER_9   = 19
global.ENEMY_MONSTER_10  = 20
global.ENEMY_BOMB        = 21
global.ENEMY_ALIEN       = 22

// TODO: needs to be a array
global.TOTAL_SHIPS_1 = 6
global.TOTAL_SHIPS_2 = 2
global.TOTAL_SHIPS_3 = 6
global.TOTAL_SHIPS_4 = 5
global.TOTAL_SHIPS_5 = 5
global.TOTAL_MONSTERS_1 = 7 
global.TOTAL_MONSTERS_2 = 7

global.TOTAL_BOMBS = 30
global.TOTAL_ALIEN = 20

// enemies in second wave
global.SECOND_WAVE_ENEMY_METEOR = 100
global.TOTAL_METEORS= 2

// Special enemies
global.SPECIAL_CARGO_SHIP = 200

global.game_stage = 1

// Enemy Waves on planets
global.STAGE_ENEMIES[1,0]  = global.ENEMY_SHIP_1 //global.ENEMY_SHIP //global.ENEMY_MONSTER_1 //global.ENEMY_SHIP_2
global.STAGE_ENEMIES[1,1]  = global.ENEMY_BOMB
global.STAGE_ENEMIES[1,2]  = global.ENEMY_MONSTER_1
global.STAGE_ENEMIES[1,3]  = global.ENEMY_SHIP_3
global.STAGE_ENEMIES[1,4]  = global.ENEMY_SHIP_1
global.STAGE_ENEMIES[1,5]  = global.ENEMY_MONSTER_2
global.STAGE_ENEMIES[1,6]  = global.ENEMY_SHIP_2
global.STAGE_ENEMIES[1,7]  = global.ENEMY_MONSTER_1
global.STAGE_ENEMIES[1,8]  = global.ENEMY_ALIEN
global.STAGE_ENEMIES[1,9]  = global.ENEMY_SHIP_1
global.STAGE_ENEMIES[1,10] = global.ENEMY_BOMB

global.selected_planet = 0

global.WEAPON_ENERGY_BALL       = 1
global.WEAPON_ENERGY_BALL_SPIN  = 2
global.WEAPON_ENERGY_BALL_STAR  = 3


global.PLAYER_SINGLE_LASER = 1
global.PLAYER_DOUBLE_LASER = 2

// player
global.player_lives = 2
global.player_weapon = global.PLAYER_SINGLE_LASER


