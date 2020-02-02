/// @description Dibujar personaje

draw_self();

if( __isOnFire ) {
	
	if ( __effectFlashHurtAmount > 0) {
	
		__effectFlashHurtAmount--;
		draw_set_alpha(0.5)
		shader_set(sh_sprite_flash_white);
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		shader_reset();

		draw_set_alpha(1)

	}
	
	draw_sprite(sp_danio_1, -1, x, y - sprite_height + 16);

}
