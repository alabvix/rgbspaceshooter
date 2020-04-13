if (!global.option_music) {exit}

var music_index = argument[0]
audio_stop_all();
audio_play_sound(music_index, 1, true);
audio_sound_gain(music_index, 0.2, 0);
