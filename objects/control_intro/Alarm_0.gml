/// @description Insert description here


if( __page < __totalPages ) {

	__page++;
	alarm[0] = global.g_oneSecond * 3;

} else {

	room_goto(rm_menu);
	if not (audio_is_playing(sn_start) ) {
		audio_sound_pitch(sn_start, random_range(1.0, 1.25) )
		audio_play_sound(sn_start, 10, false); 
	}
	
}