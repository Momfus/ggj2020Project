///@function state_step_player_move()


#region Declaración de variables locales

var l_inputX =  __inputID.__moveRight - __inputID.__moveLeft;
	
#endregion

#region Controlar si se dejo de mover el jugador

if( l_inputX == 0 ){
	
	sc_player_state_change_to_idle();
	
	exit;
	
}

#endregion


#region Moverse


	__hsp = (l_inputX * __speed);
	
	image_xscale = l_inputX;
	

#endregion

// Ejecutar stack de acciones normales compartidas entre estados step del jugador
event_perform(ev_other, ev_user0);