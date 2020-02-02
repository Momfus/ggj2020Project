/// @description Elementos en pantalla


// Empezar
if( __canUseMenu ) {
	
	if( __isShowPressEnter ) {
	
		if( __inputID.__currentInput == e_input.keyboard ) {
	
			sc_draw_text_font_transformed(__halfRoomWidth - 2, __halfRoomHeight + 198, "Press ENTER to play", 2, 2, 0, fa_center, fa_top, c_black);
			sc_draw_text_font_transformed(__halfRoomWidth, __halfRoomHeight + 200, "Press ENTER to play", 2, 2, 0, fa_center, fa_top, c_white);
			
			
	
		} else {
	
			
			sc_draw_text_font_transformed(__halfRoomWidth - 2, __halfRoomHeight + 198, "Press START to play", 2, 2, 0, fa_center, fa_top, c_white);
			sc_draw_text_font_transformed(__halfRoomWidth, __halfRoomHeight + 200, "Press START to play", 2, 2, 0, fa_center, fa_top, c_white);
		}
	

	} 

}

// Para salir
sc_draw_text_font_transformed(__halfRoomWidth, __halfRoomHeight + 260, "ESC = QUIT GAME\nR = Restart\nR = Windowed / Fullscreen", 1.5, 1.5, 0, fa_center, fa_top, c_white);

// Indicaciones teclado
sc_draw_text_font_transformed(10, room_height - 160, "<<Keyboard>>\n A/D = move \n J = jump\n K=Fix", 1.5, 1.5, 0, fa_left, fa_top, c_white);




// Indicaciones joystick
sc_draw_text_font_transformed(room_width, room_height - 160, "<<Joystick>>   \n Left Stick = move \n A = jump \n B=Fix ", 1.5, 1.5, 0, fa_right, fa_top, c_white);