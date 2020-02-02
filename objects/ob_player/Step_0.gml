/// @description Ejecutar estado

if( y - 40 > ob_water.y and __stateCurrent != e_state_player.water) {

	sc_player_state_change_to_water()

} 
script_execute( __stateCurrent_step );
