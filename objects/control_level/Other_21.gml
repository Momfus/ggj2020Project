/// @description 

switch(ob_bote_base.sprite_index){

	case sp_bote_base_pixelart_0: {
	
		if( __lifeBoteCurrent <= 0.75 ){
			ob_bote_base.sprite_index = sp_bote_base_pixelart_1;
			sc_effect_screenShake(5, 1, 3);
		}
	
		break;
		
	}

	case sp_bote_base_pixelart_1: {
	
		if( __lifeBoteCurrent <= 0.3 ){
			ob_bote_base.sprite_index = sp_bote_base_pixelart_2;
			sc_effect_screenShake(5, 1, 3);
		} else {
			
			if(  __lifeBoteCurrent > 0.75 ) {
				ob_bote_base.sprite_index = sp_bote_base_pixelart_0;
			}
		}
	
		break;
		
	}

	case sp_bote_base_pixelart_2: {
	
		if( __lifeBoteCurrent > 0.3 ){
			ob_bote_base.sprite_index = sp_bote_base_pixelart_1;
		}
	
		break;
		
	}
	
}
