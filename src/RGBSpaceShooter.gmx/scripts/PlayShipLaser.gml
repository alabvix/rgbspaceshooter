
if (global.player_weapon == global.PLAYER_SINGLE_LASER) {
    switch (irandom_range(1,4)) {
        case 1:
            audio_play_sound(snd_player_normal_laser_1, 1, false);
            break;
        case 2:
            audio_play_sound(snd_player_normal_laser_2, 1, false);
            break;        
        case 3:
            audio_play_sound(snd_player_normal_laser_3, 1, false);
            break;        
        case 4:
            audio_play_sound(snd_player_normal_laser_4, 1, false);
            break;                
    }
}
if (global.player_weapon == global.PLAYER_DOUBLE_LASER) {
    switch (irandom_range(1,2)) {
        case 1:
            audio_play_sound(snd_double_laser_1, 1, false);
            break;
        case 2:
            audio_play_sound(snd_double_laser_2, 1, false);
            break;        
    }
} 
if (global.player_weapon == global.PLAYER_TRI_LASER) {
    switch (irandom_range(1,2)) {
        case 1:
            audio_play_sound(snd_tri_laser_1, 1, false);
            break;
        case 2:
            audio_play_sound(snd_tri_laser_2, 1, false);
            break;        
    }
} 

 



