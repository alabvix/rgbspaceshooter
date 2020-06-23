///DefineGlobals
global.version = "0.4.2"

// game files
global.FILE_GAME_SETTINGS = "game_settings.ini"
global.has_game_saved = HasGameSaved()

// test 
global.test_super_hit = true //false
global.test_ship_undestrutible = false

global.RED   = 1
global.GREEN = 2
global.BLUE  = 3

global.is_gamepad_connected = false
global.GAME_PAD_1 = 0

// ITENS
global.ITEM_RED_AMMO     = 1
global.ITEM_GREEN_AMMO   = 2
global.ITEM_BLUE_AMMO    = 3
global.ITEM_SINGLE_LASER = 4
global.ITEM_DOUBLE_LASER = 5
global.ITEM_TRI_LASER    = 6
global.ITEM_RGB_ENERGY   = 7
global.HUD_REFIL_20      = 8
global.ITEM_PURSUIT_LASER = 9

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
global.GAME_STATE_TRANSICATION       = 10
global.GAME_STATE_BOSS_DEFEATED      = 11
global.GAME_STATE_PLANET_RESUME      = 12
global.GAME_STATE_GAME_OVER  = 99

global.game_state = global.GAME_STATE_MAIN_MENU

// Game Options
global.difficulty_level_easy = 1
global.difficulty_level_normal = 2
global.difficulty_level_hard = 3

global.option_sound_efx = LoadSound()
global.option_music = LoadMusic()
global.option_difficulty_level = LoadDifficulty()
global.main_music_playing = false

if (global.option_music) {
    PlayMusic(snd_music_main_theme)
}

// statistics
global.total_red_created = 0
global.total_green_created = 0
global.total_blue_created = 0

global.total_red_eliminated   = 0
global.total_green_eliminated = 0
global.total_blue_eliminated = 0

// time to create enemy for game difficulty
global.counter_create_enemy_limit = 10

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
global.ENEMY_MONSTER_6_RED = 16
global.ENEMY_MONSTER_6_GREEN = 17
global.ENEMY_MONSTER_6_BLUE = 18
global.ENEMY_MONSTER_7   = 19
global.ENEMY_MONSTER_8   = 20
global.ENEMY_MONSTER_9   = 21
global.ENEMY_MONSTER_10  = 22
global.ENEMY_BOMB        = 23
global.ENEMY_ALIEN       = 24
global.ENEMY_TANK_1      = 25
global.ENEMY_MONSTER_1_RED = 26
global.ENEMY_MONSTER_1_GREEN = 27
global.ENEMY_MONSTER_1_BLUE = 28
global.ENEMY_SHIP_1_RED = 29
global.ENEMY_SHIP_1_GREEN = 30
global.ENEMY_SHIP_1_BLUE = 31
global.ENEMY_SHIP_10 = 32
global.ENEMY_SHIP_10_RED = 33
global.ENEMY_SHIP_10_GREEN = 34
global.ENEMY_SHIP_10_BLUE = 35
global.ENEMY_SHIP_9_RED = 36
global.ENEMY_SHIP_9_GREEN = 37
global.ENEMY_SHIP_9_BLUE = 38

// BOSS AND SUB-BOSS
global.BOSS       = 500
global.SUB_BOSS   = 601
global.TOTAL_SUB_BOSS = 1

global.SUB_BOSS_1_NAME = "Visontroy"
global.SUB_BOSS_1_HP_MAX = 800
global.BOSS_1_NAME = "Mobile Base"
global.BOSS_1_HP_MAX = 800

global.SUB_BOSS_SPACE_LAB_NAME = "Cruzader"
global.SUB_BOSS_SPACE_LAB_HP_MAX = 600

// TODO: needs to be a array
global.TOTAL_SHIPS_1 = 6
global.TOTAL_SHIPS_2 = 2
global.TOTAL_SHIPS_3 = 6
global.TOTAL_SHIPS_4 = 5
global.TOTAL_SHIPS_5 = 5
global.TOTAL_SHIPS_6 = 8
global.TOTAL_SHIPS_7 = 3
global.TOTAL_SHIPS_8 = 3
global.TOTAL_SHIPS_9 = 2
global.TOTAL_SHIPS_10 = 4
global.TOTAL_MONSTERS_1 = 7 
global.TOTAL_MONSTERS_2 = 7
global.TOTAL_MONSTERS_3 = 7
global.TOTAL_MONSTERS_4 = 1
global.TOTAL_MONSTERS_6 = 1
global.TOTAL_BOMBS = 30
global.TOTAL_ALIEN = 20
global.TOTAL_TANK_1 = 6

// enemies in second wave
global.SECOND_WAVE_ENEMY_METEOR = 100
global.TOTAL_METEORS= 2

// Special enemies
global.SPECIAL_CARGO_SHIP = 200
global.AMMUNITION = 201

//global.game_stage = 1

// PLANETS
global.selected_planet = 0
global.PLANET_AURORA_SPACE    = 1
global.PLANET_AURORA_LAND     = 2
global.PLANET_MIRANDHA_SPACE  = 3
global.PLANET_MIRANDHA_LAND   = 4
global.PLANET_NEDOMIA_V_SPACE = 5
global.PLANET_NEDOMIA_V_LAND  = 6
global.PLANET_SPACE_LAB       = 7
global.PLANET_SPACE_LAB_LAND  = 8

global.PLANET_AURORA_NAME    = "Aurora"
global.PLANET_MIRANDHA_NAME  = "Mirandha"
global.PLANET_NEDOMIA_V_NAME = "Nedomia V"
global.PLANET_SPACE_LAB_NAME = "Space Lab"

// PLANET AURORA SPACE
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

// PLANET AURORA LAND
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,0] = global.ENEMY_SHIP_6
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,1] = global.ENEMY_TANK_1
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,2] = global.ENEMY_SHIP_7
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,3] = global.ENEMY_MONSTER_3
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,4] = global.ENEMY_SHIP_8
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,5] = global.ENEMY_TANK_1
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,6] = global.ENEMY_SHIP_2
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,7] = global.ENEMY_MONSTER_4
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,8] = global.ENEMY_BOMB
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,9] = global.ENEMY_SHIP_1
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,10] = global.ENEMY_MONSTER_1
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,11] = global.ENEMY_SHIP_7
global.STAGE_ENEMIES[global.PLANET_AURORA_LAND,12] = global.BOSS

// SPACE LAB SPACE
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 0] = global.SUB_BOSS
/*
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 0] = global.ENEMY_SHIP_9_RED
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 1] = global.ENEMY_SHIP_9_GREEN
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 2] = global.ENEMY_SHIP_9_BLUE
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 3] = global.ENEMY_MONSTER_6_BLUE
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 4] = global.ENEMY_MONSTER_1_RED
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 5] = global.ENEMY_MONSTER_6_GREEN
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 6] = global.ENEMY_MONSTER_1_BLUE
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 7] = global.ENEMY_MONSTER_1_GREEN
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 8] = global.ENEMY_SHIP_4
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 9] = global.ENEMY_SHIP_1_RED
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 10] = global.ENEMY_SHIP_1_GREEN
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 11] = global.ENEMY_SHIP_1_BLUE
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 12] = global.ENEMY_MONSTER_6_RED
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 13] = global.ENEMY_SHIP_10_RED
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB, 14] = global.SUB_BOSS
*/

// SPACE LAB LAND
global.STAGE_ENEMIES[global.PLANET_SPACE_LAB_LAND,0] = global.BOSS 
//global.STAGE_ENEMIES[global.PLANET_SPACE_LAB_LAND,1] = global.ENEMY_TANK_1

// enemy weapons
global.WEAPON_ENERGY_BALL       = 1
global.WEAPON_ENERGY_BALL_SPIN  = 2
global.WEAPON_ENERGY_BALL_STAR  = 3
global.WEAPON_BIO_BALL          = 4
global.WEAPON_BIO_VERM          = 5
global.WEAPON_ENERGY_BALL_V     = 6
global.WEAPON_TANK_FIRE         = 7
global.WEAPON_ENERGY_MISSILE    = 8
global.WEAPON_PURSUIT_MISSILE   = 9
global.WEAPON_PURSUIT_AMEBA     = 10
global.WEAPON_MONSTER_5         = 11
global.WEAPON_TORPEDO_LASER     = 12


//////////////////////////////////
// player stuff
global.PLAYER_SINGLE_LASER = 1
global.PLAYER_DOUBLE_LASER = 2
global.PLAYER_TRI_LASER    = 3
global.PLAYER_PURSUIT_LASER = 4

HandlePlayerAttributes(true)

// fire directions
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

global.ship_7_ix = 0
global.ship_7_pos_x[0] = 128
global.ship_7_pos_x[1] = 1024/2
global.ship_7_pos_x[2] = 900

global.color_array[0] = global.RED
global.color_array[1] = global.BLUE
global.color_array[2] = global.GREEN
global.color_index = -1


