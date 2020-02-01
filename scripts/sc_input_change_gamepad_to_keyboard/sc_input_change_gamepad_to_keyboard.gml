///@function sc_input_change_gamepad_to_keyboard( still_connect )
///@description Cambia el objeto qeu tenga asignado un teclado como input a un joystick
///@param {bool} stillConnect
///@return {}

var l_stillConnect = argument0;

with( __currentPlayer ){
	
	// Cambiar input
	__inputID = sc_player_set_input( control_input_keyboard );
	__inputID.__inputMoveIntensity = 1;
	__inputID.__gamepadIsConnect = l_stillConnect;



}

instance_destroy();