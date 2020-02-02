///@function sc_player_state_change_to_fix()
///@description Se hace el cambio general del jugador al estado move
///@param {boolean} isForceByAttackEnd - Puede atacar y moverse, por lo que stateCurrent se ignora el cambio, pero al terminar de hacer un ataque debe todo ir al estado deseado.
///@return {real}

__stateCurrent = e_state_player.repair;
__stateCurrent_step = state_step_player_fix;

if( __isEva ) { 
		sprite_index = sp_player_eva_fix; 
	} else {
		sprite_index = sp_player_peron_fix;	
	}
	
image_index = 0;

image_speed = 1