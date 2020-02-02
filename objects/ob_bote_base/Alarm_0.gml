/// @description 

var l_xx = irandom_range(0, sprite_width);

effect_create_above(ef_smokeup, x + lengthdir_x(l_xx, image_angle), y + lengthdir_y(l_xx, image_angle), 2, c_gray)

alarm[0] = global.g_oneSecond * random_range(0.25, 0.5);