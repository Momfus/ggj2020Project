///@function sc_player_state_change_to_fix()
///@description Se hace el cambio general del jugador al estado move
///@param {boolean} isForceByAttackEnd - Puede atacar y moverse, por lo que stateCurrent se ignora el cambio, pero al terminar de hacer un ataque debe todo ir al estado deseado.
///@return {real}

__stateCurrent = e_state_player.repair;
__stateCurrent_step = state_step_player_fix;

if (place_meeting(x, y + __vsp, parent_collision)) {
__hsp = 0; 

}

if( __isEva ) { 
		sprite_index = sp_player_eva_fix; 
	} else {
		sprite_index = sp_player_peron_fix;	
	}
	
image_index = 0;

image_speed = 1

// Creacion del hitbox
__hitboxID = instance_create_layer(x + sign(image_xscale) * 20 , y, global.g_arrayLayerNames[e_layer.hitbox_hurtbox], ob_hitbox)