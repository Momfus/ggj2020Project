///@function sc_player_state_change_to_idle(is_forceByAtackEnd)
///@description Se hace el cambio general del jugador al estado idle
///@param {boolean} isForceByAttackEnd - Puede atacar y moverse, por lo que stateCurrent se ignora el cambio, pero al terminar de hacer un ataque debe todo ir al estado deseado.
///@return {real}

	
__stateCurrent = e_state_player.idle;
	
__stateCurrent_step = state_step_player_idle;
	
__hsp = 0;
image_speed = 0.5;	