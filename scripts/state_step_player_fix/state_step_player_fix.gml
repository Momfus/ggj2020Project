///@function state_step_player_fix()

if( sc_animation_is_frame_ext( 3, image_speed, image_index, sprite_index ) ) {

	sc_player_state_change_to_idle();
	
}

// Ejecutar stack de acciones normales compartidas entre estados step del jugador
event_perform(ev_other, ev_user0);