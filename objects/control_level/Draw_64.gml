/// @description Info level

var l_aRatio = image_xscale;

sc_draw_text_font_transformed( 10 * l_aRatio, 28 * l_aRatio, "Level " + string_digits(room_get_name(room)), 2 * l_aRatio, 2 * l_aRatio, 0, fa_left, fa_top, c_white);
