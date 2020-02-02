/// @description Game over

instance_destroy(ob_danio);

with(ob_player) {

	__stateCurrent = e_state_player.noControl;
	
	__stateCurrent_step = state_step_player_noControl;
	
	visible = false;
	
}


with( ob_bote_base ){

	alarm[0] = global.g_oneSecond * random_range(0.25, 0.5);

}

with( instance_create_layer(0, 0, global.g_arrayLayerNames[e_layer.control], control_gameOver) ) {

	__score = other.__score;
	
}

instance_destroy();