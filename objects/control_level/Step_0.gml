/// @description 

if( !global.g_levelGameOver ) {
	__lifeBoteCurrent = clamp( __lifeBoteCurrent, 0, __lifeBoteMax );


	if( __lifeBoteCurrent <= 0 ) {
	
		global.g_levelGameOver = true;
		alarm[0] = -1;
		alarm[11] = -1;
		event_user(10);
		
	}
	


}