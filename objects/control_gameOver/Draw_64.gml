/// @description 

draw_set_alpha(__currentAlpha);

	draw_set_colour(c_black);
	draw_rectangle( 0, 0, global.g_guiWidth, global.g_guiHeight, false )

draw_set_alpha(1);


if( __isRestartEnable ) {
	
	
	
	sc_draw_text_font_transformed(global.g_guiHalfWidth, global.g_guiHalfHeight + 100 * image_xscale, "SCORE: " + string(__score),  1 * __scale * image_xscale, 1 * __scale * image_yscale, 0, fa_center, fa_middle, c_white);
	sc_draw_text_font_transformed(global.g_guiHalfWidth, global.g_guiHalfHeight, "PRESS 'R' TO RESTART",1.5 * image_xscale, 1.5 * image_yscale, 0, fa_center, fa_middle, c_white);
	
}