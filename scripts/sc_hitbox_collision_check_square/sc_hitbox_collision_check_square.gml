///@function sc_hitbox_collision_check_square()
///@description Se realiza un chequeo de colisión para realizar el daño a las intancias con hurtbox
///@return {void}

var l_ignoreThis = false,
	l_instanceCollisionList = ds_list_create(),
	l_instanceCollisionNumber = instance_place_list(x, y, ob_danio, l_instanceCollisionList, false);

if( l_instanceCollisionNumber > 0 ){
	
	// Recorro la lista de posibles objectos colisionando con este hurtbox
	for( var i = 0; i < l_instanceCollisionNumber; ++i) {
	
		if( !ds_exists(__ignoreList, ds_type_list)	){  exit; } // Evitar errores por si por una colisión auto inflijida ya no tiene la lista
		l_ignoreThis = false
		
		#region Verificar si debe ignorarse
		var l_ignoreListSize = ds_list_size(__ignoreList)
		for( var j = 0; j < l_ignoreListSize;  j++ ) {
			
			if( __ignoreList[|j] == l_instanceCollisionList[|i].id) {
		
				l_ignoreThis = true;
				break;
				
			}
		}
		
		#endregion
		
		#region Realizar el golpe/daño al evento correspondiente y añadir a la lista de ignorar
		if( !l_ignoreThis ) {
			
			var l_instanceHit = l_instanceCollisionList[|i].id;
		
			if( instance_exists(l_instanceHit) ){ // Esta verificaicón sirve por si también otro hitbox actuó en el mismo objeto antes
			
				ds_list_add(__ignoreList, l_instanceHit);
				with( l_instanceHit ){ event_user(0); }

		
			} else {
		
				continue;
			
			}
			
		}
		
		
		#endregion
	
	}

}

ds_list_destroy(l_instanceCollisionList);