switch (irandom_range(1,4)) {
        case 1:
            audio_play_sound(snd_monster_killed_1, 1, false);
            break;
        case 2:
            audio_play_sound(snd_monster_killed_2, 1, false);
            break;        
        case 3:
            audio_play_sound(snd_monster_killed_3, 1, false);
            break;        
        case 4:
            audio_play_sound(snd_monster_killed_4, 1, false);
            break;                
    }
