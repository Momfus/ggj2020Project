/// @description Info level

var l_aRatio = image_xscale;

//sc_draw_text_font_transformed( 10 * l_aRatio, 28 * l_aRatio, "Level " + string_digits(room_get_name(room)), 2 * l_aRatio, 2 * l_aRatio, 0, fa_left, fa_top, c_white);

if( !global.g_levelGameOver) {

	// Icono vida bote
	draw_sprite_ext(sp_icono_bote, 0, 100 * l_aRatio, 32 * l_aRatio, image_xscale, image_yscale, __rotIcoBote, c_white, 1);

	// Barra vida bote
	draw_set_colour(c_green);

	var l_bordeMax = 1000 * l_aRatio,
		l_bordeIzq = 200 * l_aRatio;

	draw_rectangle( l_bordeIzq, 20 * l_aRatio, 
					l_bordeIzq + l_bordeMax * __lifeBoteCurrent, 60 * l_aRatio, false );
				
	draw_set_color(c_black)
	sc_draw_rectangle_width(l_bordeIzq, 20 * l_aRatio, l_bordeIzq + l_bordeMax,  60 * l_aRatio, 2 * l_aRatio);

	// Aviso saltar agua
	if( ob_player.__isOnFire and __showJumpToWater ){
	
		sc_draw_text_font_transformed(global.g_guiHalfWidth - 1 * l_aRatio, global.g_guiHalfHeight - 151 * l_aRatio, "JUMP INTO THE WATER!!!", 2 * l_aRatio, 2 * l_aRatio, 0, fa_center, fa_middle, c_white);
		sc_draw_text_font_transformed(global.g_guiHalfWidth, global.g_guiHalfHeight - 150 * l_aRatio, "JUMP INTO THE WATER!!!", 2 * l_aRatio, 2 * l_aRatio, 0, fa_center, fa_middle, c_red);
	
	}
	
	// Score
	sc_draw_text_font_transformed(9 * l_aRatio, global.g_guiHeight - 49 * l_aRatio, "SCORE: " +  string(__score), 1.5 * l_aRatio, 1.5 * l_aRatio, 0, fa_left, fa_bottom, c_black);
	sc_draw_text_font_transformed(10 * l_aRatio, global.g_guiHeight - 50 * l_aRatio, "SCORE: " +  string(__score), 1.5 * l_aRatio, 1.5 * l_aRatio, 0, fa_left, fa_bottom, c_white);

}