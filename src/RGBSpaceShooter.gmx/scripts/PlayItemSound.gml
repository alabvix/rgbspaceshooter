if (!global.option_sound_efx) {
    exit
}
//global.ITEM_RED_AMMO     = 1
//global.ITEM_GREEN_AMMO   = 2
//global.ITEM_BLUE_AMMO    = 3
//global.ITEM_SINGLE_LASER = 4
//global.ITEM_DOUBLE_LASER = 5
//global.ITEM_TRI_LASER    = 6
//global.ITEM_RGB_ENERGY   = 7
var item = argument[0]
switch (item) {
    case global.ITEM_RGB_ENERGY:
        audio_play_sound(snd_rgb_item_collected, 2, false);
        break;
    case global.ITEM_RED_AMMO:
        audio_play_sound(snd_energy_item_collected, 2, false);
        break;
    case global.ITEM_GREEN_AMMO:
        audio_play_sound(snd_energy_item_collected, 2, false);
        break;
    case global.ITEM_BLUE_AMMO:
        audio_play_sound(snd_energy_item_collected, 2, false);
        break;                
    case global.ITEM_SINGLE_LASER:
        audio_play_sound(snd_vox_single_laser, 3, false);
        audio_sound_gain(snd_vox_single_laser, 1.3, 0);
        break;                        
    case global.ITEM_DOUBLE_LASER:
        audio_play_sound(snd_vox_double_laser, 3, false);
        audio_sound_gain(snd_vox_double_laser, 1.3, 0);
        break;                                
    case global.ITEM_TRI_LASER:
        audio_play_sound(snd_vox_tri_laser, 3, false);
        audio_sound_gain(snd_vox_tri_laser, 1.3, 0);
        break;                                        
}        
