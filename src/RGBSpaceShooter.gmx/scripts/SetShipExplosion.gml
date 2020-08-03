// Change player ship sprite to explosion sprite
// change the game state do SHIP DESTROYED

//instance_create(x, y, obj_little_explosion)
SetGameState(global.GAME_STATE_SHIP_DESTROYED)
image_speed = 0.5
sprite_index = spt_honey_badger_explosion

if (instance_exists(obj_player_ship_shadow)) {
    instance_destroy(obj_player_ship_shadow)
}
//object_set_visible(obj_player_ship, false);
