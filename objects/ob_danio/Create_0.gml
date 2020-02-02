/// @description 

sprite_index = choose( sp_danio_1, sp_danio_2 );

effect_create_above(ef_smokeup, x, y, 1, c_ltgray)

__hits = 3;
__effectFlashHurtAmount = 0;

alarm[0] = global.g_oneSecond * 0.25;