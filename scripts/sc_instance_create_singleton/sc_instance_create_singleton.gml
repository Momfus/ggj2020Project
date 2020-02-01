///@function sc_instance_create_singleton(x, y, object, layer?)
///@description Comprueba que exista solo una de las intancias 
///@param {int} x
///@param {int} y
///@param {object} object_id  - Tipo de instancia a crear
///@param {string} layer_id? - (opcional) Capa a crearse la instancia singleton, por defecto es "control"
///@return {real}

var l_objectId = argument[2];

#region En caso que ya exista el objeto

	if( instance_number(l_objectId) > 0 ){


		return l_objectId;
		show_error("La instancia singleton " + object_get_name( self.object_index ) + " ya existe", false)
		exit;
	
	} 

#endregion

#region En caso que no exista el objeto

	#region Definición de variables locales

	var l_x = argument[0],
		l_y = argument[1],
		l_layerId = undefined,
		l_instance = undefined;

	#endregion
	
	#region Setteo de las variables opcionales

	if( argument_count > 3){ 
	
		l_layerId = argument[3];
	
	} else {

		l_layerId = global.g_arrayLayerNames[e_layer.control];
	
	}


	#endregion


	l_instance = instance_create_layer( l_x, l_y, l_layerId, l_objectId );
	l_instance.persistent = true;
	

	return l_instance;

#endregion