/// @description Verificar conección de gamepadas

__gamepadIsConnect = sc_gamepad_is_connected()


if not ( __gamepadIsConnect ){

	sc_input_change_gamepad_to_keyboard(false);
	
}