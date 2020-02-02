/// @description Recibir daño


if not (audio_is_playing(sn_hit_danio) ) {
		audio_sound_pitch(sn_hit_danio, random_range(0.5, 0.75) )
		audio_play_sound(sn_hit_danio, 5, false); 
	}
if( __hits <= 1) {

	instance_destroy();
	
}

__effectFlashHurtAmount = 3;
__hits--;

