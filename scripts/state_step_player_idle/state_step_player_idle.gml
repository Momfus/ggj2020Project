///@function state_step_player_idle()

var l_inputX =  __inputID.__moveRight - __inputID.__moveLeft;

if( l_inputX != 0  ){
	
	sc_player_state_change_to_move();
	exit;
}

// Ejecutar stack de acciones normales compartidas entre estados step del jugador
event_perform(ev_other, ev_user0);