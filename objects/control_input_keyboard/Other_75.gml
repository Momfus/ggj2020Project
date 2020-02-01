/// @description Verificar conección de gamepadas

__gamepadIsConnect = sc_gamepad_is_connected();


if( __gamepadIsConnect ){

	sc_input_change_keyboard_to_gamepad();
	
}