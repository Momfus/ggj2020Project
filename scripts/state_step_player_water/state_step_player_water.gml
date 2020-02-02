///@function state_step_player_water()

#region Declaración de variables locales

var l_inputX =  __inputID.__moveRight - __inputID.__moveLeft;
	
#endregion


#region Moverse


	__hsp = (l_inputX * __speed) 
	

#endregion

if( y - 40 > ob_water.y ) {
	__grv = sc_approach_smooth(__grv, -0.8, 0.2);
} else {

	__grv = 0;
	__vsp = 0;
	y = ob_water.y + 39; 
	
}

// Ejecutar stack de acciones normales compartidas entre estados step del jugador
event_perform(ev_other, ev_user0);