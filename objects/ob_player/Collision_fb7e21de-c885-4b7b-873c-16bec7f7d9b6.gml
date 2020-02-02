/// @description 
if( !__isOnFire and other.sprite_index == sp_danio_1) {

	__effectFlashHurtAmount = 3;

	__isOnFire = true;
	sc_effect_screenShake(2, 1, 4);
	
	with(control_level) {
	
		__showJumpToWater = true;
		event_user(12);
	}
	
	if not (audio_is_playing(sn_onFire) ) {
		audio_sound_pitch(sn_onFire, random_range(1.0, 1.25) )
		audio_play_sound(sn_onFire, 10, false); 
	}

}