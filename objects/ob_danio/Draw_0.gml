/// @description 


draw_self();

var l_pos = 0;

repeat( __hits ){
	
	draw_sprite(sp_danio_hp, 0, x - 16 + l_pos, y - sprite_height - 16)
	l_pos = sprite_get_width(sp_danio_hp) + 4;
	
}
