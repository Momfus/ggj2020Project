/// @description Inicio atributos

__musicTheme = music_marchaPeron;


if( !audio_is_playing(music_marchaPeron) ) {

	audio_master_gain(1);

	audio_play_sound(__musicTheme, 1000, true);
	audio_sound_gain(__musicTheme, 0, 0);
	audio_sound_gain(__musicTheme, 0.5, 3000);
	
}
