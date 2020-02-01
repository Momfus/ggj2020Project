/// @description Elementos en pantalla

if( __isShowPressAny ) {
	sc_draw_text_font_transformed(__halfRoomWidth, __halfRoomHeight, "<< GAME MENU >> \nPress Any Key to Start", 2, 2, 0, fa_center, fa_top, c_white);
} else {
	sc_draw_text_font_transformed(__halfRoomWidth, __halfRoomHeight, "<< GAME MENU >> ", 2, 2, 0, fa_center, fa_top, c_white);
}