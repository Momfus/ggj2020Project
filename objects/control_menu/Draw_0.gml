/// @description Elementos en pantalla

if( __canUseMenu ) {
	
	if( __isShowPressEnter ) {
	
		if( __inputID.__currentInput == e_input.keyboard ) {
	
			sc_draw_text_font_transformed(__halfRoomWidth, __halfRoomHeight, "<< GAME MENU >> \nPress Enter to play", 2, 2, 0, fa_center, fa_top, c_white);
	
		} else {
	
			sc_draw_text_font_transformed(__halfRoomWidth, __halfRoomHeight, "<< GAME MENU >> \nPress START to play", 2, 2, 0, fa_center, fa_top, c_white);
	
		}
	
	

	} else {
	
		sc_draw_text_font_transformed(__halfRoomWidth, __halfRoomHeight, "<< GAME MENU >> ", 2, 2, 0, fa_center, fa_top, c_white);


	}

}