// Energy Tanks
separator = 70
item1x = 380
item2x = item1x + separator
item3x = item2x + separator
item4x = item3x + separator 

instance_create(item1x, 620, obj_red_energy_tank)
instance_create(item2x, 620, obj_green_energy_tank)
instance_create(item3x, 620, obj_blue_energy_tank)
instance_create(item4x, 620, obj_rgb_energy_tank)

// Player Ship
instance_create(512, 550, obj_player_ship)

// Playe ship icon
instance_create(950, 16, obj_honey_badger_icon)

// manage objects
instance_create(0,0, obj_game_hud)
instance_create(0,0, obj_game_manager)

