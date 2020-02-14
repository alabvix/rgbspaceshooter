// Change player ship sprite to explosion sprite
// change the game state do SHIP DESTROYED

instance_create(x, y, obj_little_explosion)
SetGameState(global.GAME_STATE_SHIP_DESTROYED)
image_speed = 0.2
sprite_index = spt_player_ship_explosion

