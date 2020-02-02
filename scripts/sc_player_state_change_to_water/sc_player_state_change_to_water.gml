///@function sc_player_state_change_to_water()
///@description Se hace el cambio general del jugador al estado idle
///@param {boolean} isForceByAttackEnd - Puede atacar y moverse, por lo que stateCurrent se ignora el cambio, pero al terminar de hacer un ataque debe todo ir al estado deseado.
///@return {real}

	
__stateCurrent = e_state_player.water;
	
__stateCurrent_step = state_step_player_water;
	