/// @description 

var l_left = bbox_left,
	l_top = bbox_top;

__waterSurface = surface_create( sprite_width, sprite_height + __waterTransparencBufferHeight);
	
surface_set_target(__waterSurface);

	draw_clear_alpha(c_blue, 0);
	
	draw_set_alpha(0.75);
	draw_set_color(c_black);
	draw_rectangle( 0, __waterTransparencBufferHeight, sprite_width, sprite_height + __waterTransparencBufferHeight, false);
	draw_set_alpha(0.5);
	gpu_set_colorwriteenable(true, true, true, false);
	draw_set_color($f4bb41);
	draw_rectangle( 0, __waterTransparencBufferHeight, sprite_width, sprite_height + __waterTransparencBufferHeight, false );
	draw_set_color($f4eb42);
	draw_line(0, __waterTransparencBufferHeight + 1, sprite_width, __waterTransparencBufferHeight + 1);
	
	draw_set_color(c_white);
	draw_line(0, __waterTransparencBufferHeight, sprite_width, __waterTransparencBufferHeight);
	draw_set_alpha(1)
	gpu_set_colorwriteenable(true, true, true, true);

surface_reset_target();


	
draw_surface(__waterSurface, l_left, l_top - __waterTransparencBufferHeight );

if( room == rm_menu ) {

	sc_draw_text_font_transformed(l_left + 10, l_top - __waterTransparencBufferHeight - 10, "MADE for the GGJ 2020 BY:\n Santiago Darago - Daniela Scattareggi - Josesupe - Hals - Fede Tula Ruiz - Momfus", 1.5, 1.5, 0, fa_left, fa_bottom, c_black)
	sc_draw_text_font_transformed(l_left + 8, l_top - __waterTransparencBufferHeight - 8, "MADE for the GGJ 2020 BY:\n Santiago Darago - Daniela Scattareggi - Josesupe - Hals - Fede Tula Ruiz - Momfus", 1.5, 1.5, 0, fa_left, fa_bottom, c_fuchsia)
	
	
}
