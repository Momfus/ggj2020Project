/// @description Comprobar uso de menu

if( __canUseMenu ) {

	// Comenzar nivel 1
	if( __inputID.__actionStartRelease) {
	
		instance_destroy(__inputID);
		
		if not (audio_is_playing(sn_start) ) {
			audio_sound_pitch(sn_start, random_range(1.0, 1.25) )
			audio_play_sound(sn_start, 10, false); 
		}
		
		room_goto(rm_level_1);
		
	}
	
}