///@function sc_player_state_change_to_water()
///@description Se hace el cambio general del jugador al estado idle
///@param {boolean} isForceByAttackEnd - Puede atacar y moverse, por lo que stateCurrent se ignora el cambio, pero al terminar de hacer un ataque debe todo ir al estado deseado.
///@return {real}

	
__stateCurrent = e_state_player.water;
	
__stateCurrent_step = state_step_player_water;

if( __isOnFire ) {
	
	__isOnFire = false;
	effect_create_above(ef_smokeup, x, y - sprite_height + 16, 2, c_ltgray);
	with(control_level){
	
		event_user(13);
	
	}
	
	if not (audio_is_playing(sn_splash) ) {
		audio_sound_pitch(sn_splash, random_range(0.5, 0.75) )
		audio_play_sound(sn_splash, 5, false); 
	}
	

} else {

if not (audio_is_playing(sn_splash) ) {
		audio_sound_pitch(sn_splash, random_range(1.5, 1.25) )
		audio_play_sound(sn_splash, 5, false); 
	}
	

}


if( __isEva ) { 
		sprite_index = sp_player_eva_move; 
	} else {
		sprite_index = sp_player_peron_move;	
	}
	
image_index = 0;

image_speed = 1.5
