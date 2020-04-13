if (!global.option_sound_efx) {
    exit
}
switch (irandom_range(1,4)) {
        case 1:
            audio_play_sound(snd_explo_0, 1, false);
            break;
        case 2:
            audio_play_sound(snd_explo_1, 1, false);
            break;        
        case 3:
            audio_play_sound(snd_explo_2, 1, false);
            break;        
        case 4:
            audio_play_sound(snd_explo_3, 1, false);
            break;                
    }
