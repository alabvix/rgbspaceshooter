_counter_create_sec_enemy += 1
if ( round(_counter_create_sec_enemy) == 55) {
    if (_enemy_type2 == global.SECOND_WAVE_ENEMY_METEOR) {
       if (_total_meteor_created < global.TOTAL_METEORS ) {
           CreateEnemy(_enemy_type2)    
           _total_meteor_created ++;
           _can_create_enemy2 = false
       } 
       if (_total_meteor_destroyed == global.TOTAL_METEORS) {
           _total_meteor_destroyed = 0
           _total_meteor_created = 0
           _can_create_enemy2 = true
       }
    }
    _counter_create_sec_enemy = 0
    if (_can_create_enemy2) {
       _enemy_type2 = global.SECOND_WAVE_ENEMY_METEOR
    }
}
