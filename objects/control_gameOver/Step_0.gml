/// @description 

if( !__isRestartEnable ) {
	
	__currentAlpha = sc_approach( __currentAlpha, __targetAlpha, 0.01);
	
	if( __currentAlpha == __targetAlpha ) {
	
		__isRestartEnable = true;
		
	}
	
} else {

	__oscilacionScale = sc_wrap(__oscilacionScale + 0.05, 0, 359);

	var l_mult = sin(__oscilacionScale);

	__scale = __scale + __scaleDif * l_mult;
	
}