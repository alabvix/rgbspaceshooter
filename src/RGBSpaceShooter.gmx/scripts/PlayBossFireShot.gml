if (!global.option_sound_efx) {
    exit
}
var boss_name = argument[0]
var weapon = argument[1]

switch (boss_name) {
    case global.BOSS_1_NAME:
       switch (weapon) {
            case global.WEAPON_BIO_BALL:
                audio_play_sound(snd_sub_boss_1_laser_2, 1, false);
                break
            case global.WEAPON_BIO_VERM:
                audio_play_sound(snd_sub_boss_1_laser, 1, false);
                break
       }
       break
}
