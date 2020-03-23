///DefineGlobals

global.test_super_hit = false

global.RED   = 1
global.GREEN = 2
global.BLUE  = 3

global.ITEM_RED_AMMO     = 1
global.ITEM_GREEN_AMMO   = 2
global.ITEM_BLUE_AMMO    = 3
global.ITEM_SINGLE_LASER = 4
global.ITEM_DOUBLE_LASER = 5
global.ITEM_TRI_LASER    = 6

// Game States
global.GAME_STATE_MAIN_MENU      = 1
global.GAME_STATE_SELECT_PLANET  = 2
global.GAME_STATE_PLAY           = 3
global.GAME_STATE_SHIP_DESTROYED = 4
global.GAME_STATE_WEAPON_SELECTION   = 5
global.GAME_STATE_BOSS_FIGHT         = 6
global.GAME_STATE_PREPARE_BOSS_FIGHT = 7
global.GAME_STATE_SUB_BOSS_DEFEATED  = 8
global.GAME_STATE_BOSS_DEFEATED      = 9
global.GAME_STATE_GAME_OVER          = 99

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

global.BOSS       = 500
global.SUB_BOSS   = 501
global.TOTAL_SUB_BOSS = 1


// TODO: needs to be a array
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

// enemies in second wave
global.SECOND_WAVE_ENEMY_METEOR = 100
global.TOTAL_METEORS= 2

// Special enemies
global.SPECIAL_CARGO_SHIP = 200
global.AMMUNITION = 201

//global.game_stage = 1

global.selected_planet = 0
global.PLANET_AURORA_SPACE = 1
global.PLANET_AURORA_LAND  = 2

// Enemy Waves on planet Aurora Space
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,0]  = global.ENEMY_SHIP_1
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,1]  = global.ENEMY_BOMB
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,2]  = global.ENEMY_MONSTER_1
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,3]  = global.ENEMY_SHIP_3
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,4]  = global.ENEMY_SHIP_1
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,5]  = global.ENEMY_MONSTER_2
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,6]  = global.ENEMY_SHIP_2
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,7]  = global.ENEMY_MONSTER_1
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,8]  = global.ENEMY_ALIEN
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,9]  = global.ENEMY_SHIP_1
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,10] = global.ENEMY_BOMB
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,11] = global.ENEMY_SHIP_4
global.STAGE_ENEMIES[global.PLANET_AURORA_SPACE,12] = global.SUB_BOSS

// Enemy Waves on planet Aurora land
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,0]  = global.ENEMY_SHIP_6
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,1]  = global.ENEMY_SHIP_6
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,2]  = global.ENEMY_SHIP_1
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,3]  = global.ENEMY_MONSTER_2
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,4]  = global.ENEMY_SHIP_2
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,5]  = global.ENEMY_MONSTER_1
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,6]  = global.ENEMY_ALIEN
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,7]  = global.ENEMY_SHIP_1
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,8]  = global.ENEMY_BOMB
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,9]  = global.ENEMY_SHIP_4
//global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,10] = global.BOSS

// enemy weapons
global.WEAPON_ENERGY_BALL       = 1
global.WEAPON_ENERGY_BALL_SPIN  = 2
global.WEAPON_ENERGY_BALL_STAR  = 3
global.WEAPON_BIO_BALL          = 4
global.WEAPON_BIO_VERM          = 5
global.WEAPON_ENERGY_BALL_V     = 6

global.PLAYER_SINGLE_LASER = 1
global.PLAYER_DOUBLE_LASER = 2
global.PLAYER_TRI_LASER    = 3

// player 
global.player_lives = 2
global.player_weapon = global.PLAYER_SINGLE_LASER

// boss names
global.BOSS_1_NAME = "Visontroy"


global.SPECIAL_WEAPON_1 = 1
global.player_weapon_special = global.SPECIAL_WEAPON_1

global.dir_array[0] = 0
global.dir_array[1] = 30
global.dir_array[2] = 45
global.dir_array[3] = 60
global.dir_array[4] = 90
global.dir_array[5] = 120
global.dir_array[6] = 135
global.dir_array[7] = 150
global.dir_array[8] = 180
global.dir_array[9] = 210
global.dir_array[10] = 225
global.dir_array[11] = 240
global.dir_array[12] = 270
global.dir_array[13] = 300
global.dir_array[14] = 315
global.dir_array[15] = 330

global.dir_array_lenght = array_length_1d(global.dir_array)



