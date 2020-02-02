/// @description 


draw_self();

if ( __effectFlashHurtAmount > 0) {
	
		__effectFlashHurtAmount--;
		draw_set_alpha(0.5)
		shader_set(sh_sprite_flash_white);
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
		shader_reset();

		draw_set_alpha(1)

	}

var l_pos = 0;

repeat( __hits ){
	
	draw_sprite(sp_danio_hp, 0, x - 16 + l_pos, y - sprite_height - 16)
	l_pos += sprite_get_width(sp_danio_hp) + 4;
	
}
