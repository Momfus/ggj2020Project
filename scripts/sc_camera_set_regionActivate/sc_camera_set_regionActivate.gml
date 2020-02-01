///@function sc_camera_set_regionActivate(viewRegionOffset)
///@description Setea los valores iniciales de la cámara con un región alrededor señalada para saber hasta donde activar/desactiar elementos
///@param {int} viewRegionOffset
///@return {void}


// Distancia extra alrededor de la vista (de esta manera hay un tiempo previo por si se mueve rápido la cámara y funcionen)
__viewRegionOffset = argument0; 

__viewX = camera_get_view_x( view_camera[0] );
__viewY = camera_get_view_y( view_camera[0] );


sc_cameraUpdateRegionActualPosition(); 
sc_cameraUpdateRegionPreviousPosition();

