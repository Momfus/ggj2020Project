/// @description Game over

instance_destroy(ob_danio);
instance_destroy(ob_player);


with( ob_bote_base ){

	alarm[0] = global.g_oneSecond * random_range(0.25, 0.5);

}

instance_create_layer(0, 0, global.g_arrayLayerNames[e_layer.control], control_gameOver)

instance_destroy();