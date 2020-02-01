///@function sc_gamepadAnyButtonPress()
///@description Verifica si algún del gamepad (ya conectado) es presionado
///@return {boolean}

for ( var i = gp_face1; i < gp_axisrv; i++ ) {
    
	if ( gamepad_button_check( 0, i ) ){ 
		
		return true;
		
	}
}

return false; // En caso que todo lo anterior fuera "false"
