///sc_create_collision_solid_1px_move(x, y, width, height)
///@description Verifica si en la dirección señalada hay un objeto colisionando ignorando a otros que pueden pertenecer al mismo grupo (vidrios con paredes, por ejemplo)
///@param {int} x
///@param {int} y
///@param {int} width
///@param {int} height
///@return {id} ob_solid_1px_static

var l_solidId = instance_create_layer(argument0, argument1, global.g_arrayLayerNames[e_layer.collision], ob_solid_rectangle_1px_move );

with( l_solidId ) {

	image_xscale = argument2;
	image_yscale = argument3;
	
	__ownerId = other.id;
	
}

return l_solidId